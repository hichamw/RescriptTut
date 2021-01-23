module ExampleData = {
    let variable=1
    let otherVariable=2
}

module WithOutOpen = {
    let exampleUseWithoutOpen = ExampleData.variable + ExampleData.otherVariable
}

module WithOpen = {
    open ExampleData
    let exampleUseWithOpen = variable + otherVariable
}