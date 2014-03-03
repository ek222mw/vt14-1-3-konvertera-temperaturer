using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TempKonvertering_Labb1.Model
{
    public static class TemperaturConverter
    {
        public static int CelsiusToFahrenheit(int degreesC)
        {
            double fahrenheit = 0;
            fahrenheit = (degreesC * 9/5) + 32;
            Math.Round(fahrenheit,0);
            int omvandlad = Convert.ToInt32(fahrenheit);
            return omvandlad;
        }

        public static int FahrenheitToCelsius(int degreesF)
        {
            int celsius = 0;
            celsius = (degreesF - 32) * 5/9;
            int omvandlad = Convert.ToInt32(celsius);
            return omvandlad;

        }
    }
}