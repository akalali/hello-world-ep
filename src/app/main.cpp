#include "Hello.h"
#include "PocoTimer.h"

#include "Poco/Thread.h"

/*
 * Main application that accesses the "hello()"-function from the hello-source.
 */
int main() {

  PocoTimer pocoTimer;

  Poco::Timer timer(250, 500);

  Hello();

  timer.start(Poco::TimerCallback<PocoTimer>(pocoTimer, &PocoTimer::PrintElapsedTime));
  Poco::Thread::sleep(5000);
  timer.stop();

}
