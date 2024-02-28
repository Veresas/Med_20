using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Threading;

namespace Med_20.Classes
{
    internal class GlobalTimer
    {
        public static DispatcherTimer Timer { get; } = new DispatcherTimer();

        public static TimeSpan ElapsedTime { get; set; }
        static GlobalTimer()
        {
            Timer.Interval = TimeSpan.FromMinutes(1);
            Timer.Tick += Timer_Tick;
        }

        public static void Timer_start()
        {
            Timer.Start();
        }

        public static void Timer_stop()
        {
            Timer.Stop();
        }
        private static void Timer_Tick(object sender, EventArgs e)
        {
            ElapsedTime += Timer.Interval;
        }
    }
}
