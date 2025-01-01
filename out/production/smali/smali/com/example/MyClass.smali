.class public Lcom/example/MyClass;
.super Ljava/lang/Object;

.method public static main([Ljava/lang/String;)V
    .locals 2

    # Get the System.out PrintStream
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    # Load the string "Hello, World!" into v1
    const-string v1, "Hello, World!"

    # Invoke the println method on the PrintStream instance
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    # Return from the method
    return-void
.end method
