# `hello-lang`

A tiny programming language built using **C**.

This language was create following the tutorial series by [Ianertson](https://www.youtube.com/@HelloWorldCode). The original developed repository from the videos is available here https://github.com/sebbekarlsson/hello


## How it works

The **lexer** receives the source code and creates **tokens** from it. Then the **parser** gets the **tokens** from the **lexer** and generates the **AST** (Abstract Syntax Tree) from it. After that, the **visitor** receives the **AST** root node and then it knows what to do with each **AST** node type.

### Source structure

```
src
├── AST.c
├── include
│   ├── AST.h
│   ├── lexer.h
│   ├── main.h
│   ├── parser.h
│   ├── token.h
│   └── visitor.h
├── lexer.c
├── main.c
├── parser.c
├── token.c
└── visitor.c
```

### Syntax

The syntax is similar to JavaScript and it requires semicolons at the end of each statement. 

```javascript
var person1 = "John Doe";
var person2 = "Sarah";

print(person1, person2);
```

Result

```
Jhon Doe
Sarah
```
