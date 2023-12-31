USE [VentasQuesadillas]
GO
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (1, N'Selene Ciapara')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (2, N'Cristiano Ronaldo')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (3, N'Benjamin Veliz')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (4, N'Kristy Ciapara')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (5, N'Karina Plancarte')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (6, N'Eduardo Brambilia')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (7, N'Mariana Camarena')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (8, N'Jaqueline Gonzalez')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (9, N'Omar Navarro')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre]) VALUES (10, N'Zinedine Zidane')
GO
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre]) VALUES (1, N'Juan Jose Ciapara')
GO
INSERT [dbo].[Orden] ([OrdenID], [Nombre], [Precio]) VALUES (1, N'Sencilla', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Orden] ([OrdenID], [Nombre], [Precio]) VALUES (2, N'Especial', CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Orden] ([OrdenID], [Nombre], [Precio]) VALUES (3, N'Jumbo', CAST(50.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [TotalOrdenes], [DescripcionIngredientes], [Cantidad]) VALUES (1, N'Quesadilla Sencilla', 0, N'Frijol, Jamón', 2)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [TotalOrdenes], [DescripcionIngredientes], [Cantidad]) VALUES (2, N'Quesadilla Especial', 0, N'Frijol, Jamón, Chorizo', 3)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [TotalOrdenes], [DescripcionIngredientes], [Cantidad]) VALUES (3, N'Quesadilla Jumbo', 0, N'Frijol, Jamón, Chorizo, Barbacoa', 4)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [TotalOrdenes], [DescripcionIngredientes], [Cantidad]) VALUES (4, N'Quesadilla de Carne Asada', 0, N'Frijol, Jamón, Carne Asada', 3)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [TotalOrdenes], [DescripcionIngredientes], [Cantidad]) VALUES (5, N'Quesadilla de Barbacoa', 0, N'Frijol, Barbacoa', 2)
GO
INSERT [dbo].[FormasPago] ([FormaPagoID], [Nombre]) VALUES (1, N'Efectivo')
INSERT [dbo].[FormasPago] ([FormaPagoID], [Nombre]) VALUES (2, N'Tarjeta')
GO
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [Folio], [ClienteID], [EmpleadoID], [OrdenID], [FormaPagoID], [Total], [IVA]) VALUES (1, CAST(N'2023-10-17T09:00:00.000' AS DateTime), N'Folio001', 1, 1, 1, 1, CAST(20.00 AS Decimal(10, 2)), CAST(2.60 AS Decimal(5, 2)))
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [Folio], [ClienteID], [EmpleadoID], [OrdenID], [FormaPagoID], [Total], [IVA]) VALUES (2, CAST(N'2023-10-17T10:30:00.000' AS DateTime), N'Folio002', 2, 1, 2, 2, CAST(35.00 AS Decimal(10, 2)), CAST(4.55 AS Decimal(5, 2)))
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [Folio], [ClienteID], [EmpleadoID], [OrdenID], [FormaPagoID], [Total], [IVA]) VALUES (3, CAST(N'2023-10-17T12:15:00.000' AS DateTime), N'Folio003', 3, 1, 3, 1, CAST(50.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(5, 2)))
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [Folio], [ClienteID], [EmpleadoID], [OrdenID], [FormaPagoID], [Total], [IVA]) VALUES (4, CAST(N'2023-10-17T14:00:00.000' AS DateTime), N'Folio004', 4, 1, 1, 2, CAST(20.00 AS Decimal(10, 2)), CAST(2.60 AS Decimal(5, 2)))
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [Folio], [ClienteID], [EmpleadoID], [OrdenID], [FormaPagoID], [Total], [IVA]) VALUES (5, CAST(N'2023-10-17T15:45:00.000' AS DateTime), N'Folio005', 5, 1, 2, 1, CAST(35.00 AS Decimal(10, 2)), CAST(4.55 AS Decimal(5, 2)))
GO
SET IDENTITY_INSERT [dbo].[VentaProductos] ON 

INSERT [dbo].[VentaProductos] ([VentaProductoID], [VentaID], [ProductoID], [Cantidad], [Precio]) VALUES (1, 1, 1, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[VentaProductos] ([VentaProductoID], [VentaID], [ProductoID], [Cantidad], [Precio]) VALUES (2, 2, 3, 1, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[VentaProductos] ([VentaProductoID], [VentaID], [ProductoID], [Cantidad], [Precio]) VALUES (3, 3, 4, 3, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[VentaProductos] ([VentaProductoID], [VentaID], [ProductoID], [Cantidad], [Precio]) VALUES (4, 4, 1, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[VentaProductos] ([VentaProductoID], [VentaID], [ProductoID], [Cantidad], [Precio]) VALUES (5, 5, 2, 1, CAST(35.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[VentaProductos] OFF
GO
INSERT [dbo].[Ingredientes] ([IngredienteID], [Nombre]) VALUES (1, N'Frijol')
INSERT [dbo].[Ingredientes] ([IngredienteID], [Nombre]) VALUES (2, N'Jamón')
INSERT [dbo].[Ingredientes] ([IngredienteID], [Nombre]) VALUES (3, N'Chorizo')
INSERT [dbo].[Ingredientes] ([IngredienteID], [Nombre]) VALUES (4, N'Barbacoa')
INSERT [dbo].[Ingredientes] ([IngredienteID], [Nombre]) VALUES (5, N'Carne Asada')
GO
