Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:zebra", { :controller => "calculations", :action => "sqrt" })

  get("/random/:min/:max", { :controller => "calculations", :action => "random" })

  get("/payment/:rate/:years/:principal", { :controller => "calculations", :action => "payment" })
end
