#include "PocoTimer.h"

#include <iostream>

PocoTimer::PocoTimer()
{
  stopWatch.start();
}

void PocoTimer::PrintElapsedTime(Poco::Timer& timer)
{
  std::cout << "Time elapsed: " << stopWatch.elapsed() / 1000 << " milliseconds." << std::endl;
}
