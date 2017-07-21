describe "ERROR grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-danger")

    runs ->
      grammar = atom.grammars.grammarForScopeName("text.danger")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "text.danger"
