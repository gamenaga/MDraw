//    The MIT License (MIT)
//
//    Copyright (c) 2013 xmkevin
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy of
//    this software and associated documentation files (the "Software"), to deal in
//    the Software without restriction, including without limitation the rights to
//    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//    the Software, and to permit persons to whom the Software is furnished to do so,
//    subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "ViewController.h"

#import "MDrawView.h"
#import "MDrawLine.h"
#import "MDrawRect.h"
#import "MDrawEllipse.h"
#import "MDrawFreeline.h"
#import "MDrawPolyline.h"

@interface ViewController ()

@end

@implementation ViewController
{
    __weak IBOutlet MDrawView *drawView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    drawView = [[MDrawView alloc] initWithFrame:self.view.frame];
//    [self.view addSubview:drawView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)drawLine:(id)sender
{
    [drawView beginDrawingForType:[MDrawLine class]];
}

-(IBAction)drawRect:(id)sender
{
    [drawView beginDrawingForType:[MDrawRect class]];
}

-(IBAction)drawEllipse:(id)sender
{
    [drawView beginDrawingForType:[MDrawEllipse class]];
}

-(IBAction)drawFreeline:(id)sender
{
    [drawView beginDrawingForType:[MDrawFreeline class]];
}

-(IBAction)drawPolyline:(id)sender
{
    [drawView beginDrawingForType:[MDrawPolyline class]];
}

-(IBAction)finishDrawing:(id)sender
{
    [drawView finalizeDrawing];
}

-(IBAction)undo:(id)sender
{
    [drawView undo];
}

-(IBAction)redo:(id)sender
{
    [drawView redo];
}



@end
