import 'dart:io'; 
import 'dart:math'; 

void main() { 
  List<int> nums= List.generate(10, (i)=>Random().nextInt(100)+0); 
  int res=0; 
  for(int i=1; i < nums.length; i++){ 
    if(nums[i]<nums[res]){ 
      res=i; 
    } 
  } 
  print(nums); 
  print(res); 
} 