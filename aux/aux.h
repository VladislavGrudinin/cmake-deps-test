#pragma once

#include <QObject>

namespace aux {
class Aux : public QObject {
  Q_OBJECT
public:
  ~Aux();
  void foo();
};
} // namespace aux
