package com;

import java.util.ArrayList;
import java.util.Vector;

public class VectorDemo {

	public static void main(String[] args) {

		Vector<Object> arr = new Vector<>();

		System.out.println(arr.isEmpty());
		arr.add(1999);
		arr.add(665);
		arr.add(847348);
		arr.add(665);
		arr.add(0, 10000);

		arr.set(1, 2999);

		arr.remove(0);
		int[] a = { 10, 20, 30, 40, 50 };

		arr.add(a);

		// ArrayList<Object> arr1=new ArrayList<>(a);

		System.out.println(arr);

		System.out.println("Size: " + arr.size());
		System.out.println(arr.contains(665));
		System.out.println(arr.get(0));

		System.out.println(arr.isEmpty());

		Object[] objects = arr.toArray();

	}

}
