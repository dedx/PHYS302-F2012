(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     12411,        307]
NotebookOptionsPosition[     12644,        297]
NotebookOutlinePosition[     12999,        313]
CellTagsIndexPosition[     12956,        310]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"g", "=", "9.8"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"result", "=", 
       RowBox[{"NDSolve", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"x", "''"}], "[", "t", "]"}], "==", " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "g"}], "/", 
               RowBox[{"vt", "^", "2"}]}], ")"}], " ", 
             RowBox[{"Sqrt", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"x", "'"}], "[", "t", "]"}], "^", "2"}], "+", 
               RowBox[{
                RowBox[{
                 RowBox[{"y", "'"}], "[", "t", "]"}], "^", "2"}]}], "]"}], 
             RowBox[{
              RowBox[{"x", "'"}], "[", "t", "]"}]}]}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{"y", "''"}], "[", "t", "]"}], "==", " ", 
            RowBox[{
             RowBox[{"-", "g"}], 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"y", "'"}], "[", "t", "]"}], "/", 
                  RowBox[{"vt", "^", "2"}]}], ")"}], 
                RowBox[{"Sqrt", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{"x", "'"}], "[", "t", "]"}], "^", "2"}], "+", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"y", "'"}], "[", "t", "]"}], "^", "2"}]}], 
                 "]"}]}]}], ")"}]}]}], ",", 
           RowBox[{
            RowBox[{"x", "[", "0", "]"}], " ", "==", " ", "0"}], ",", " ", 
           RowBox[{
            RowBox[{"y", "[", "0", "]"}], " ", "==", " ", "2"}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{"x", "'"}], "[", "0", "]"}], "==", 
            RowBox[{"V", " ", 
             RowBox[{"Cos", "[", "\[Theta]", "]"}]}]}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{"y", "'"}], "[", "0", "]"}], "==", 
            RowBox[{"V", " ", 
             RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "y"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"t", ",", "0", " ", ",", "200"}], "}"}]}], "]"}]}], "}"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"ParametricPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"V", " ", 
            RowBox[{"Cos", "[", "\[Theta]", "]"}], "t"}], ",", 
           RowBox[{"2", "+", 
            RowBox[{"V", " ", 
             RowBox[{"Sin", "[", "\[Theta]", "]"}], "t"}], "-", 
            RowBox[{"9.8", 
             RowBox[{
              SuperscriptBox["t", "2"], "/", "2"}]}]}]}], "}"}], ",", 
         RowBox[{"Evaluate", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"x", "[", "t", "]"}], ",", 
             RowBox[{"y", "[", "t", "]"}]}], "}"}], "/.", "result"}], "]"}]}],
         "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", "0", ",", "tf"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Blue"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"Thick", ",", "Red"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"AxesOrigin", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0"}], "}"}]}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<x (m)\>\"", ",", "\"\<y (m)\>\""}], "}"}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "100"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "10"}], ",", "50"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"ImageSize", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"500", ",", "300"}], "}"}]}]}], "]"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"V", ",", "30", ",", "\"\<initial velocity (m/s)\>\""}], "}"}], 
     ",", "0", ",", "100", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Theta]", ",", 
       RowBox[{"50", "*", 
        RowBox[{"Pi", "/", "180"}]}], ",", "\"\<angle (rad)\>\""}], "}"}], 
     ",", ".1", ",", 
     RowBox[{"\[Pi]", "/", "2"}], ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"vt", ",", "35", ",", "\"\<terminal velocity (m/s)\>\""}], 
      "}"}], ",", ".01", ",", "100", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"tf", ",", "0.01", ",", "\"\<time (s)\>\""}], "}"}], ",", 
     "0.01", ",", "10", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.463884914893962*^9, 3.463884917973218*^9}, {
   3.4638849557034073`*^9, 3.4638849581145363`*^9}, {3.463884997584944*^9, 
   3.463885048096175*^9}, {3.463885079968025*^9, 3.463885107895399*^9}, {
   3.463885171973954*^9, 3.46388518316313*^9}, {3.463885245737893*^9, 
   3.463885314623969*^9}, {3.4638853532402163`*^9, 3.463885391341701*^9}, {
   3.463885421453302*^9, 3.463885496786004*^9}, {3.463885547239088*^9, 
   3.463885591165753*^9}, {3.463885638561248*^9, 3.463885767009013*^9}, {
   3.463885799300158*^9, 3.463885821358252*^9}, {3.4638858596626577`*^9, 
   3.46388586317972*^9}, {3.463885969866982*^9, 3.463885970520256*^9}, {
   3.463886027464872*^9, 3.463886028445962*^9}, {3.494549275009759*^9, 
   3.494549328134201*^9}, {3.494549376763152*^9, 3.494549386854583*^9}, {
   3.494549425370618*^9, 3.494549437129569*^9}, {3.494549566763579*^9, 
   3.4945495786552258`*^9}, 3.4945496448602943`*^9, {3.494549704165442*^9, 
   3.494549858860968*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`tf$$ = 
    3.8699999999999997`, $CellContext`V$$ = 37., $CellContext`vt$$ = 
    29.6, $CellContext`\[Theta]$$ = 0.5941875658030853, Typeset`show$$ = True,
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`V$$], 30, "initial velocity (m/s)"}, 0, 100}, {{
       Hold[$CellContext`\[Theta]$$], Rational[5, 18] Pi, "angle (rad)"}, 0.1,
       Rational[1, 2] Pi}, {{
       Hold[$CellContext`vt$$], 35, "terminal velocity (m/s)"}, 0.01, 100}, {{
      
       Hold[$CellContext`tf$$], 0.01, "time (s)"}, 0.01, 10}}, 
    Typeset`size$$ = {500., {148., 152.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`V$896$$ = 
    0, $CellContext`\[Theta]$897$$ = 0, $CellContext`vt$898$$ = 
    0, $CellContext`tf$899$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`tf$$ = 0.01, $CellContext`V$$ = 
        30, $CellContext`vt$$ = 35, $CellContext`\[Theta]$$ = 
        Rational[5, 18] Pi}, "ControllerVariables" :> {
        Hold[$CellContext`V$$, $CellContext`V$896$$, 0], 
        Hold[$CellContext`\[Theta]$$, $CellContext`\[Theta]$897$$, 0], 
        Hold[$CellContext`vt$$, $CellContext`vt$898$$, 0], 
        Hold[$CellContext`tf$$, $CellContext`tf$899$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`result$ = 
         NDSolve[{
           Derivative[
             2][$CellContext`x][$CellContext`t] == \
((-$CellContext`g)/$CellContext`vt$$^2) 
             Sqrt[Derivative[1][$CellContext`x][$CellContext`t]^2 + 
               Derivative[1][$CellContext`y][$CellContext`t]^2] 
             Derivative[1][$CellContext`x][$CellContext`t], 
            Derivative[
             2][$CellContext`y][$CellContext`t] == (-$CellContext`g) (
              1 + (Derivative[
                 1][$CellContext`y][$CellContext`t]/$CellContext`vt$$^2) 
               Sqrt[Derivative[1][$CellContext`x][$CellContext`t]^2 + 
                 Derivative[
                   1][$CellContext`y][$CellContext`t]^2]), $CellContext`x[0] == 
            0, $CellContext`y[0] == 2, 
            Derivative[1][$CellContext`x][0] == $CellContext`V$$ 
             Cos[$CellContext`\[Theta]$$], 
            Derivative[1][$CellContext`y][0] == $CellContext`V$$ 
             Sin[$CellContext`\[Theta]$$]}, {$CellContext`x, $CellContext`y}, \
{$CellContext`t, 0, 200}]}, 
        ParametricPlot[{{$CellContext`V$$ 
           Cos[$CellContext`\[Theta]$$] $CellContext`t, 
           2 + $CellContext`V$$ Sin[$CellContext`\[Theta]$$] $CellContext`t - 
           9.8 ($CellContext`t^2/2)}, 
          Evaluate[
           ReplaceAll[{
             $CellContext`x[$CellContext`t], 
             $CellContext`y[$CellContext`t]}, $CellContext`result$]]}, \
{$CellContext`t, 0, $CellContext`tf$$}, 
         PlotStyle -> {{Thick, Blue}, {Thick, Red}}, AxesOrigin -> {0, 0}, 
         AxesLabel -> {"x (m)", "y (m)"}, PlotRange -> {{0, 100}, {-10, 50}}, 
         ImageSize -> {500, 300}]], 
      "Specifications" :> {{{$CellContext`V$$, 30, "initial velocity (m/s)"}, 
         0, 100, Appearance -> 
         "Labeled"}, {{$CellContext`\[Theta]$$, Rational[5, 18] Pi, 
          "angle (rad)"}, 0.1, Rational[1, 2] Pi, Appearance -> 
         "Labeled"}, {{$CellContext`vt$$, 35, "terminal velocity (m/s)"}, 
         0.01, 100, Appearance -> 
         "Labeled"}, {{$CellContext`tf$$, 0.01, "time (s)"}, 0.01, 10, 
         Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {232., 238.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.463885921633025*^9, 3.4638859725996733`*^9, 3.463886033023241*^9, {
   3.494549297131468*^9, 3.494549329384817*^9}, {3.4945493815078983`*^9, 
   3.494549389270206*^9}, {3.494549428564252*^9, 3.494549438147106*^9}, {
   3.494549482775278*^9, 3.494549512092407*^9}, {3.494549572177485*^9, 
   3.4945496149735413`*^9}, 3.494549650600243*^9, {3.494549715203816*^9, 
   3.494549860542554*^9}, 3.55866407838696*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.463885913752861*^9, 3.463885913793271*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.4638858356675987`*^9, 3.463885908922175*^9}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.4638859023160343`*^9, 3.463885902358943*^9}}]
},
WindowSize->{725, 790},
WindowMargins->{{201, Automatic}, {Automatic, 0}},
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (August 26, \
2012)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 6321, 161, 268, "Input"],
Cell[7581, 195, 4760, 90, 487, "Output"]
}, Open  ]],
Cell[12356, 288, 92, 1, 27, "Input"],
Cell[12451, 291, 92, 1, 27, "Input"],
Cell[12546, 294, 94, 1, 27, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ixTuDYOdFtLTRCwVTCm5LOOW *)
