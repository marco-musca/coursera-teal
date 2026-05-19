library(teal)

app <- init(
  data = teal_data(IRIS = iris, MTCARS = mtcars),
  modules = modules(
    example_module(label = "Example module")
  )
) |>
  modify_title("My first teal app") |>
  modify_header("My first teal app") |>
  modify_footer("This is a test")

shinyApp(app$ui, app$server)