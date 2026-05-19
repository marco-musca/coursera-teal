library(teal)

app <- init(
  data = teal_data(IRIS = iris, MTCARS = mtcars),
  modules = modules(
    example_module(label = "Example module")
  ),
  filter = teal_slices(
    teal_slice(dataname = "IRIS", varname = "Species", selected = "setosa", fixed = TRUE),
    teal_slice(dataname ="IRIS", varname = "Sepal.Length", anchored = TRUE)))|>
  modify_title("My first teal app") |>
  modify_header("My first teal app") |>
  modify_footer("This is a test")

shinyApp(app$ui, app$server)