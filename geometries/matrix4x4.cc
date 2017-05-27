#include "matrix4x4.h"

namespace niepce
{

// TODO: Rewrite (use lu factorization)
template <typename T>
auto Inverse(const Matrix4x4<T>& m) -> Matrix4x4<T>
{
  Matrix4x4<T> ret(m);
  const Float det = ( m[0][0] * m[1][1] * m[2][2] * m[3][3] ) +
                    ( m[0][0] * m[1][2] * m[2][3] * m[3][1] ) +
                    ( m[0][0] * m[1][3] * m[2][1] * m[3][2] ) +
                    ( m[0][1] * m[1][0] * m[2][3] * m[3][2] ) +
                    ( m[0][1] * m[1][2] * m[2][0] * m[3][3] ) +
                    ( m[0][1] * m[1][3] * m[2][2] * m[3][0] ) +
                    ( m[0][2] * m[1][0] * m[2][1] * m[3][3] ) +
                    ( m[0][2] * m[1][1] * m[2][3] * m[3][0] ) +
                    ( m[0][2] * m[1][3] * m[2][0] * m[3][1] ) +
                    ( m[0][3] * m[1][0] * m[2][2] * m[3][1] ) +
                    ( m[0][3] * m[1][1] * m[2][0] * m[3][2] ) +
                    ( m[0][3] * m[1][2] * m[2][1] * m[3][0] ) -
                    ( m[0][0] * m[1][1] * m[2][3] * m[3][2] ) -
                    ( m[0][0] * m[1][2] * m[2][1] * m[3][3] ) -
                    ( m[0][0] * m[1][3] * m[2][2] * m[3][1] ) -
                    ( m[0][1] * m[1][0] * m[2][2] * m[3][3] ) -
                    ( m[0][1] * m[1][2] * m[2][3] * m[3][0] ) -
                    ( m[0][1] * m[1][3] * m[2][0] * m[3][2] ) -
                    ( m[0][2] * m[1][0] * m[2][3] * m[3][1] ) -
                    ( m[0][2] * m[1][1] * m[2][0] * m[3][3] ) -
                    ( m[0][2] * m[1][3] * m[2][1] * m[3][0] ) -
                    ( m[0][3] * m[1][0] * m[2][1] * m[3][2] ) -
                    ( m[0][3] * m[1][1] * m[2][2] * m[3][0] ) -
                    ( m[0][3] * m[1][2] * m[2][0] * m[3][1] );

  ret[0][0] = ( m[1][1] * m[2][2] * m[3][3] ) + ( m[1][2] * m[2][3] * m[3][1] ) +
              ( m[1][3] * m[2][1] * m[3][2] ) - ( m[1][1] * m[2][3] * m[3][2] ) -
              ( m[1][2] * m[2][1] * m[3][3] ) - ( m[1][3] * m[2][2] * m[3][1] ) / det;

  ret[0][1] = ( m[0][1] * m[2][3] * m[3][2] ) + ( m[0][2] * m[2][1] * m[3][3] ) +
              ( m[0][3] * m[2][2] * m[3][1] ) - ( m[0][1] * m[2][2] * m[3][3] ) -
              ( m[0][2] * m[2][3] * m[3][1] ) - ( m[0][3] * m[2][1] * m[3][2] ) / det;

  ret[0][2] = ( m[0][1] * m[1][2] * m[3][3] ) + ( m[0][2] * m[1][3] * m[3][1] ) +
              ( m[0][3] * m[1][1] * m[3][2] ) - ( m[0][1] * m[1][3] * m[3][2] ) -
              ( m[0][2] * m[1][1] * m[3][3] ) - ( m[0][3] * m[1][2] * m[3][1] ) / det;

  ret[0][3] = ( m[0][1] * m[1][3] * m[2][2] ) + ( m[0][2] * m[1][1] * m[2][3] ) +
              ( m[0][3] * m[1][2] * m[2][1] ) - ( m[0][1] * m[1][2] * m[2][3] ) -
              ( m[0][2] * m[1][3] * m[2][1] ) - ( m[0][3] * m[1][1] * m[2][2] ) / det;

  ret[1][0] = ( m[1][0] * m[2][3] * m[3][2] ) + ( m[1][2] * m[2][0] * m[3][3] ) +
              ( m[1][3] * m[2][2] * m[3][0] ) - ( m[1][0] * m[2][2] * m[3][3] ) -
              ( m[1][2] * m[2][3] * m[3][0] ) - ( m[1][3] * m[2][0] * m[3][2] ) / det;

  ret[1][1] = ( m[0][0] * m[2][2] * m[3][3] ) + ( m[0][2] * m[2][3] * m[3][0] ) +
              ( m[0][3] * m[2][0] * m[3][2] ) - ( m[0][0] * m[2][3] * m[3][2] ) -
              ( m[0][2] * m[2][0] * m[3][3] ) - ( m[0][3] * m[2][2] * m[3][0] ) / det;

  ret[1][2] = ( m[0][0] * m[1][3] * m[3][2] ) + ( m[0][2] * m[1][0] * m[3][3] ) +
              ( m[0][3] * m[1][2] * m[3][0] ) - ( m[0][0] * m[1][2] * m[3][3] ) -
              ( m[0][2] * m[1][3] * m[3][0] ) - ( m[0][3] * m[1][0] * m[3][2] ) / det;

  ret[1][3] = ( m[0][0] * m[1][2] * m[2][3] ) + ( m[0][2] * m[1][3] * m[2][0] ) +
              ( m[0][3] * m[1][0] * m[2][2] ) - ( m[0][0] * m[1][3] * m[2][2] ) -
              ( m[0][2] * m[1][0] * m[2][3] ) - ( m[0][3] * m[1][2] * m[2][0] ) / det;

  ret[2][0] = ( m[1][0] * m[2][1] * m[3][3] ) + ( m[1][1] * m[2][3] * m[3][0] ) +
              ( m[1][3] * m[2][0] * m[3][1] ) - ( m[1][0] * m[2][3] * m[3][1] ) -
              ( m[1][1] * m[2][0] * m[3][3] ) - ( m[1][3] * m[2][1] * m[3][0] ) / det;

  ret[2][1] = ( m[0][0] * m[2][3] * m[3][1] ) + ( m[0][1] * m[2][0] * m[3][3] ) +
              ( m[0][3] * m[2][1] * m[3][0] ) - ( m[0][0] * m[2][1] * m[3][3] ) -
              ( m[0][1] * m[2][3] * m[3][0] ) - ( m[0][3] * m[2][0] * m[3][1] ) / det;

  ret[2][2] = ( m[0][0] * m[1][1] * m[3][3] ) + ( m[0][1] * m[1][3] * m[3][0] ) +
              ( m[0][3] * m[1][0] * m[3][1] ) - ( m[0][0] * m[1][3] * m[3][1] ) -
              ( m[0][1] * m[1][0] * m[3][3] ) - ( m[0][3] * m[1][1] * m[3][0] ) / det;

  ret[2][3] = ( m[0][0] * m[1][3] * m[2][1] ) + ( m[0][1] * m[1][0] * m[2][3] ) +
              ( m[0][3] * m[1][1] * m[2][0] ) - ( m[0][0] * m[1][1] * m[2][3] ) -
              ( m[0][1] * m[1][3] * m[2][0] ) - ( m[0][3] * m[1][0] * m[2][1] ) / det;

  ret[3][0] = ( m[1][0] * m[2][2] * m[3][1] ) + ( m[1][1] * m[2][0] * m[3][2] ) +
              ( m[1][2] * m[2][1] * m[3][0] ) - ( m[1][0] * m[2][1] * m[3][2] ) -
              ( m[1][1] * m[2][2] * m[3][0] ) - ( m[1][2] * m[2][0] * m[3][1] ) / det;

  ret[3][1] = ( m[0][0] * m[2][1] * m[3][2] ) + ( m[0][1] * m[2][2] * m[3][0] ) +
              ( m[0][2] * m[2][0] * m[3][1] ) - ( m[0][0] * m[2][2] * m[3][1] ) -
              ( m[0][1] * m[2][0] * m[3][2] ) - ( m[0][2] * m[2][1] * m[3][0] ) / det;

  ret[3][2] = ( m[0][0] * m[1][2] * m[3][1] ) + ( m[0][1] * m[1][0] * m[3][2] ) +
              ( m[0][2] * m[1][1] * m[3][0] ) - ( m[0][0] * m[1][1] * m[3][2] ) -
              ( m[0][1] * m[1][2] * m[3][0] ) - ( m[0][2] * m[1][0] * m[3][1] ) / det;

  ret[3][3] = ( m[0][0] * m[1][1] * m[2][2] ) + ( m[0][1] * m[1][2] * m[2][0] ) +
              ( m[0][2] * m[1][0] * m[2][1] ) - ( m[0][0] * m[1][2] * m[2][1] ) -
              ( m[0][1] * m[1][0] * m[2][2] ) - ( m[0][2] * m[1][1] * m[2][0] ) / det;

  return ret;
}
template auto Inverse(const Matrix4x4<Float>& m) -> Matrix4x4<Float>;
template auto Inverse(const Matrix4x4<int>& m)   -> Matrix4x4<int>;

template <typename T>
auto Transpose(const Matrix4x4<T>& m) -> Matrix4x4<T>
{
  return Matrix4x4<T>(m[0][0], m[1][0], m[2][0], m[3][0],
                      m[0][1], m[1][1], m[2][1], m[3][1],
                      m[0][2], m[1][2], m[2][2], m[3][2],
                      m[0][3], m[1][3], m[2][3], m[3][3]);
}
template auto Transpose(const Matrix4x4<Float>& m) -> Matrix4x4<Float>;
template auto Transpose(const Matrix4x4<int>& m)   -> Matrix4x4<int>;

} // namespace niecpe
