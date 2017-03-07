#ifndef _VECTOR4_H__
#define _VECTOR4_H__

#include "../core/niepce.h"
#include "point4.h"

namespace niepce
{

template<typename T>
class Vector4
{
 public:
  Vector4(T v = 0.f) : x(v), y(v), z(v), w(v)
  {}
  Vector4(T xx, T yy, T zz, T ww) : x(xx), y(yy), z(zz), w(ww)
  {}
  explicit Vector4(const Point4<T>& p) : x(p.x), y(p.y), z(p.z), w(p.w)
  {
    Warningf(HasNaNs(), "Detected NaNs");
  }
  ~Vector4()
  {}

  Vector4(const Vector4& vec4) = default;
  Vector4(Vector4&& vec4)      = default;
  Vector4& operator = (const Vector4& vec4) = default;
  Vector4& operator = (Vector4&& vec4)      = default;

  auto operator == (const Vector4& v) const noexcept -> bool
  {
    return (x == v.x && y == v.y && z == v.z && w == v.w);
  }
  auto operator != (const Vector4& v) const noexcept -> bool
  {
    return (x != v.x || y != v.y || z != v.z || w != v.w);
  }

  auto operator [] (unsigned int idx) const -> T
  {
    Assertf(idx <= 4, "Out of bounds.");
    return *(&x + idx);
  }
  auto operator [] (unsigned int idx) -> T&
  {
    Assertf(idx <= 4, "Out of bounds.");
    return *(&x + idx);
  }

  operator Point4<T>() const
  {
    return Point4<T>(x, y, z, w);
  }

  auto operator + (const Vector4& v) const -> Vector4<T>
  {
    Warningf(!v.HasNaNs(), "Detected NaNs.");
    return Vector4<T>(x + v.x, y + v.y, z + v.z, w + v.w);
  }
  auto operator += (const Vector4& v) -> Vector4<T>&
  {
    Warningf(!v.HasNaNs(), "Detected NaNs.");
    x += v.x;
    y += v.y;
    z += v.z;
    w += v.w;
    return *this;
  }

  auto operator - (const Vector4& v) const -> Vector4<T>
  {
    Warningf(!v.HasNaNs(), "Detected NaNs.");
    return Vector4<T>(x - v.x, y - v.y, z - v.z, w - v.w);
  }
  auto operator -= (const Vector4& v) -> Vector4<T>&
  {
    Warningf(!v.HasNaNs(), "Detected NaNs.");
    x -= v.x;
    y -= v.y;
    z -= v.z;
    w -= v.w;
    return *this;
  }

  template<typename U>
  auto operator * (U f) const -> Vector4<T>
  {
    Warningf(!IsNaN(f), "Detected Nan.");
    return Vector4<T>(f * x, f * y, f * z, f * w);
  }
  template<typename U>
  auto operator *= (U f) -> Vector4<T>&
  {
    Warningf(!IsNaN(f), "Detected NaNs.");
    x *= f;
    y *= f;
    z *= f;
    w *= f;
    return *this;
  }

  template<typename U>
  auto operator / (U f) const -> Vector4<T>
  {
    Warningf(f != 0, "Zero division.");
    Float inv = 1.0 / f;
    return Vector4<T>(x * inv, y * inv, z * inv, w * inv);
  }
  template<typename U>
  auto operator /= (U f) -> Vector4<T>&
  {
    Warningf(f != 0, "Zero division.");
    Float inv = 1.0 / f;
    x *= inv;
    y *= inv;
    z *= inv;
    w *= inv;
    return *this;
  }

  auto operator - () const -> Vector4<T>
  {
    return Vector4<T>(-x, -y, -z, -w);
  }

  auto LengthSquared() const -> Float
  {
    return x * x + y * y + z * z + w * w;
  }
  auto Length() const -> Float
  {
    return std::sqrt( LengthSquared() );
  }
  /*
    constexpr value
   */
  static constexpr auto One() -> Point4<T>
  {
    return Point4<T>(1, 1, 1, 1);
  }
  static constexpr auto Zero() -> Point4<T>
  {
    return Point4<T>(0, 0, 0, 0);
  }
  static constexpr auto Max() -> Point4<T>
  {
    return Point4<T>(std::numeric_limits<T>::max(),
                     std::numeric_limits<T>::max(),
                     std::numeric_limits<T>::max(),
                     std::numeric_limits<T>::max());
  }
  static constexpr auto Min() -> Point4<T>
  {
    return Point4<T>(std::numeric_limits<T>::min(),
                     std::numeric_limits<T>::min(),
                     std::numeric_limits<T>::min(),
                     std::numeric_limits<T>::min());
  }
  static constexpr auto Inf() -> Point4<T>
  {
    return Point4<T>(std::numeric_limits<T>::infinity(),
                     std::numeric_limits<T>::infinity(),
                     std::numeric_limits<T>::infinity(),
                     std::numeric_limits<T>::infinity());
  }
  static constexpr auto NaN() -> Point4<T>
  {
    return Point4<T>(std::numeric_limits<T>::quiet_NaN(),
                     std::numeric_limits<T>::quiet_NaN(),
                     std::numeric_limits<T>::quiet_NaN(),
                     std::numeric_limits<T>::quiet_NaN());
  }
  static constexpr auto Eps() -> Point4<T>
  {
    return Point4<T>(std::numeric_limits<T>::epsilon(),
                     std::numeric_limits<T>::epsilon(),
                     std::numeric_limits<T>::epsilon(),
                     std::numeric_limits<T>::epsilon());
  }
  auto HasNaNs() const -> bool
  {
    return IsNaN(x) || IsNaN(y) || IsNaN(z) || IsNaN(w);
  }

 public:
  T x, y, z, w;
};

/*
  Inline Global Functions
*/
template <typename T>
inline auto operator << (std::ostream& os, const Vector4<T>& v) -> std::ostream&
{
  os << "[" << v.x << ", " << v.y << ", " << v.z << ", " << v.w << "]";
  return os;
}

template <typename T, typename U>
inline auto operator * (U f, const Vector4<T>& v) -> Vector4<T>
{
  return v * f;
}

template <typename T>
inline auto Dot(const Vector4<T>& v1, const Vector4<T>& v2) -> T = delete;

template <typename T>
inline auto Cross(const Vector4<T>& v1, const Vector4<T>& v2) -> Vector4<T> = delete;

template <typename T>
inline auto Normalize(const Vector4<T>& v) -> Vector4<T>
{
  return v / v.Length();
}

template <typename T>
inline auto Abs(const Vector4<T>& v) -> Vector4<T>
{
  return Vector4<T>(std::abs(v.x), std::abs(v.y), std::abs(v.z), std::abs(v.w));
}

template <typename T>
inline auto Lerp(Float t, const Vector4<T>& v1, const Vector4<T>& v2) -> Vector4<T>
{
  return t * v1 + (1.f - t) * v2;
}

template <typename T>
inline auto Homogeneous(const Vector4<T>& v) -> Vector3<T>
{
  return Vector3<T>(v.x, v.y, v.z) / v.z;
}

} // namespace niepce

#endif // _VECTOR4_H__
