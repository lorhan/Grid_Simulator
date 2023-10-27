model OnOff_HalfBridge_Modulator
  Modelica.Blocks.Sources.RealExpression i_l1(y = l1.i) annotation(
    Placement(visible = true, transformation(origin = {-52, -4}, extent = {{-6, -10}, {6, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.OnOffController onOffController(bandwidth = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-2, 0}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold annotation(
    Placement(visible = true, transformation(origin = {13, 13}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Logical.Not not1 annotation(
    Placement(visible = true, transformation(origin = {37, 13}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = -1) annotation(
    Placement(visible = true, transformation(origin = {-28, -30}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Logical.And and2 annotation(
    Placement(visible = true, transformation(origin = {29, -27}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Logical.OnOffController onOffController1(bandwidth = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-2, -26}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Logical.And and1 annotation(
    Placement(visible = true, transformation(origin = {27, -5}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = -1) annotation(
    Placement(visible = true, transformation(origin = {-28, -18}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExp_sine1(y = sine1.y) annotation(
    Placement(visible = true, transformation(origin = {-52, 10}, extent = {{-6, -10}, {6, 10}}, rotation = 0)));
equation
  connect(not1.y, and2.u1) annotation(
    Line(points = {{42.5, 13}, {48, 13}, {48, -16}, {14, -16}, {14, -27}, {23, -27}}, color = {255, 0, 255}));
  connect(gain2.u, i_l1.y) annotation(
    Line(points = {{-32.8, -30}, {-42.8, -30}, {-42.8, -4}, {-46.8, -4}}, color = {0, 0, 127}));
  connect(gain.y, onOffController1.reference) annotation(
    Line(points = {{-23.6, -18}, {-17.6, -18}, {-17.6, -22}, {-9.6, -22}}, color = {0, 0, 127}));
  connect(realExp_sine1.y, onOffController.reference) annotation(
    Line(points = {{-45.4, 10}, {-31.2, 10}, {-31.2, 4}, {-9, 4}}, color = {0, 0, 127}));
  connect(not1.u, greaterThreshold.y) annotation(
    Line(points = {{31, 13}, {18.5, 13}}, color = {255, 0, 255}));
  connect(greaterThreshold.u, realExp_sine1.y) annotation(
    Line(points = {{7, 13}, {-32, 13}, {-32, 10}, {-46, 10}}, color = {0, 0, 127}));
  connect(greaterThreshold.y, and1.u1) annotation(
    Line(points = {{18.5, 13}, {24, 13}, {24, 4}, {14, 4}, {14, -5}, {21, -5}}, color = {255, 0, 255}));
  connect(onOffController.y, and1.u2) annotation(
    Line(points = {{4.6, 0}, {10.6, 0}, {10.6, -9}, {21.6, -9}}, color = {255, 0, 255}));
  connect(i_l1.y, onOffController.u) annotation(
    Line(points = {{-45.4, -4}, {-9, -4}}, color = {0, 0, 127}));
  connect(onOffController1.y, and2.u2) annotation(
    Line(points = {{4.6, -26}, {8.6, -26}, {8.6, -31}, {23.6, -31}}, color = {255, 0, 255}));
  connect(gain2.y, onOffController1.u) annotation(
    Line(points = {{-23.6, -30}, {-8.6, -30}}, color = {0, 0, 127}));
  connect(gain.u, realExp_sine1.y) annotation(
    Line(points = {{-32.8, -18}, {-40.8, -18}, {-40.8, 10}, {-46.8, 10}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end OnOff_HalfBridge_Modulator;
