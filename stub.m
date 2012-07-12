#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import <stdlib.h>
#import <stdio.h>
#import <unistd.h>
#import <sys/wait.h>

int main (int argc, const char * argv[]) {

 
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSString *launchpath = [[NSBundle mainBundle] pathForResource:@"launcher" ofType:nil];

  char cmd[50000];

  [launchpath getCString:cmd maxLength:(sizeof cmd) encoding:NSUTF8StringEncoding];

  system(cmd);

  [pool release];

  
}


