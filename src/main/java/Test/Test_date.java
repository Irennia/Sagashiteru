package Test;

import java.util.Date;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;

public class Test_date {

	public static void main(String[] args) {
		Date today = new Date();

		try {
			// If you print Date, you will get un formatted output
			System.out.println("Today is : " + today);

			// formatting date in Java using SimpleDateFormat
			SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");
			String date = DATE_FORMAT.format(today);
			System.out.println("Today in dd-MM-yyyy format : " + date);

			String sDate1 = "1/11/2018";
			Date date1;

			date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);

			String sDate3 = "02/12/1998";
			Date date3;

			date3 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate3);

			String sDate2 = "1/09/2018";
			Date date2;

			date2 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate2);

			System.out.println(sDate1 + "\t" + date1);
			long millis = date1.toInstant().toEpochMilli();
			long millis2 = date2.toInstant().toEpochMilli();
			long millis3 = date3.toInstant().toEpochMilli();
			System.out.println(millis3);
			System.out.println(millis);
			System.out.println(millis2);

			long result = millis - millis2;
			System.out.println(result);

			long result2 = millis3 - millis;

			System.out.println(result2);

			Date conver = new Date(millis3);

			System.out.println(conver);

			long oneDay = 86400000;

			long dias = result / oneDay;

			System.out.println("dias : " + dias);
			long finish;

			for (int i = 0; i < dias; i++) {

				millis = millis + oneDay;
				Date d = new Date(millis);
				System.out.println(d);

			}

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
