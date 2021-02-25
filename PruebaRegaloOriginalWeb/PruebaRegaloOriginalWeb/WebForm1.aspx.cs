using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaRegaloOriginalWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        List<Producto> Carrito;
        List<Producto> Favoritos;
        protected void Page_Load(object sender, EventArgs e)
        {
           Carrito = new List<Producto>();
           Favoritos = new List<Producto>();
            btnAgregar.Click += BtnAgregar_Click;
        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(tbNombre.Text)
                || string.IsNullOrEmpty(tbPrecio.Text))
            {

            }
            else
            {
                if (ddItems.SelectedIndex == 1)
                {
                    if (string.IsNullOrEmpty(tbCantidad.Text))
                    {
                        //MessageBox.Show("No se puede agregar el producto porque no tiene cantidad");

                    }
                    else
                    {
                        Producto p1 = new Producto();
                        p1.Nombre = tbNombre.Text;
                        p1.Cantidad = Convert.ToInt32(tbCantidad.Text);
                        p1.PrecioUnitario = Convert.ToDecimal(tbPrecio.Text);
                        Carrito.Add(p1);
                        gvCarrito.DataSource = null;
                        gvCarrito.DataSource = Carrito;
                        gvCarrito.DataBind();
                        decimal precioTotal = 0;
                        foreach (Producto p in Carrito)
                        {
                            precioTotal += p.Cantidad * p.PrecioUnitario;
                        }
                        lbSubtotal.Text = precioTotal.ToString();
                    }
                }
                else
                {

                    Producto p1 = new Producto();
                    p1.Nombre = tbNombre.Text;
                    p1.Cantidad = 0;
                    p1.PrecioUnitario = Convert.ToDecimal(tbPrecio.Text);
                    Favoritos.Add(p1);
                    gvFavoritos.DataSource = null;
                    gvFavoritos.DataSource = Favoritos;
                    gvFavoritos.DataBind();

                }

            }
        }
    }
}