part of dart_appwrite.models;

/// Functions List
class FunctionList {
    /// Total number of items available on the server.
    final int sum;
    /// List of functions.
    final List<XFunction> functions;

    FunctionList({
        required this.sum,
        required this.functions,
    });

    factory FunctionList.fromMap(Map<String, dynamic> map) {
        return FunctionList(
            sum: map['sum'],
            functions: List<XFunction>.from(map['functions'].map((p) => XFunction.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "functions": functions.map((p) => p.toMap()),
        };
    }
}