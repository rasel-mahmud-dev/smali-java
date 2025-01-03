.class public Lcom/example/MyApp;
.super Ljava/lang/Object;
.source "MyApp.java"


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "called constructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    .line 7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Hello, World update!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    new-instance p0, Lcom/example/MyApp;

    invoke-direct {p0}, Lcom/example/MyApp;-><init>()V

    .line 10
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/MyApp;->start(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public start(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 20
    const-string p1, "H"

    iput-object p1, p0, Lcom/example/MyApp;->name:Ljava/lang/String;

    .line 21
    const-string p1, "hi"

    return-object p1
.end method
