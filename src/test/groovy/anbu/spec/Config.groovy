core {
  baseUrl = "http://localhost:8000"
  baseContext = "/anbu-core/"
}

environments {
  func01 {
    core {
      baseUrl = "http://anbu-core-func01.herokuapp.com/"
      baseContext = "/"
    }
  }
}
