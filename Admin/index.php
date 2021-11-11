<?php
session_start();
if (!$_SESSION['admin_username']) {
    header("Location: ../index.php");}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATN Store</title>
    <link rel="shortcut icon" href="../assets/img/logotop.gif" type="image/x-icon" />/>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">ATN Store - Administrator Panel</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active"><a href="index.php"> &nbsp; &nbsp; &nbsp; Home</a></li>
                    <li><a data-toggle="modal" data-target="#uploadModal"> &nbsp; &nbsp; &nbsp; Upload Items</a></li>
                    <li><a href="items.php"> &nbsp; &nbsp; &nbsp; Item Management</a></li>
                    <li><a href="customers.php"> &nbsp; &nbsp; &nbsp; Customer Management</a></li>
                    <li><a href="orderdetails.php"> &nbsp; &nbsp; &nbsp; Order Details</a></li>
                    <li><a href="logout.php"> &nbsp; &nbsp; &nbsp; Logout</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#"><i class="fa fa-calendar"></i> <?php $Today = date('y:m:d'); $new = date('l, F d, Y', strtotime($Today)); echo $new; ?></a>
                    </li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php extract($_SESSION); echo $admin_username; ?><b class="caret"></b></a>
                        <ul class="dropdown-menu">

                            <li><a href="logout.php"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper">
            <div id="my-carousel" class="carousel slide hero-slide hidden-xs" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#my-carousel" data-slide-to="1"></li>
                    <li data-target="#my-carousel" data-slide-to="2"></li>
                    <li data-target="#my-carousel" data-slide-to="3"></li>
                    <li data-target="#my-carousel" data-slide-to="4"></li>
                    <li data-target="#my-carousel" data-slide-to="5"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="../assets/img/6br.jpg" alt="Hero Slide" style="width:100%;height:500px;">
                        <div class="carousel-caption">
                            <h1 style="font-family:Century Gothic"><b></b></h1>
                            <h2></h2>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../assets/img/5br.jpg" alt="..." style="width:100%;height:500px;">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="../assets/img/4br.jpg" alt="..." style="width:100%;height:500px;">
                        <div class="carousel-caption">
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../assets/img/3br.jpg" alt="..." style="width:100%;height:500px;">
                        <div class="carousel-caption">
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../assets/img/2br.jpg" alt="..." style="width:100%;height:500px;">
                        <div class="carousel-caption">
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../assets/img/7br.jpg" alt="..." style="width:100%;height:500px;">
                        <div class="carousel-caption">
                            <p></p>
                        </div>
                    </div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#my-carousel" role="button" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>
                <a class="right carousel-control" href="#my-carousel" role="button" data-slide="next">
                    <span class="icon-next"></span>
                </a>
                <!-- #my-carousel-->
            </div>
            <br />
            <div class="alert alert-danger">
                &nbsp; &nbsp;Welcome to ATN Store ! So if you're looking for a set of Marvel clubs, why not visit a ATN Store? It is that easy.
                If you have a favorite ATN Store brand, this is the easiest and easiest way to get it.
                Many famous brands of ATN Store clubs such as Iron-man, Hulk, Capital American,...
                Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc.,
                formerly Marvel Publishing, Inc. and Marvel Comics Group, a publisher of American comic books and related media.
                In 2009, The Walt Disney Company acquired Marvel Entertainment, Marvel Worldwide's parent company.
                <br>
                Marvel was started in 1939 by Martin Goodman under a number of corporations and imprints but now known as Timely Comics, and by 1951 had generally become known as Atlas Comics. The Marvel era began in 1961, the year that the company launched The Fantastic Four and other superhero titles created by
                Stan Lee, Jack Kirby, Steve Ditko and many others. The Marvel brand, which had been used over the years, was solidified as the company's primary brand.
                <br>
                <br>
                Marvel counts among its characters such well-known superheroes as Spider-Man, Iron Man, Captain America, the Hulk, Thor, Wolverine, Ant-Man, the Wasp,
                Black Widow, Hawkeye, Captain Marvel, Black Panther, Doctor Strange, the Scarlet Witch, Quicksilver, She-Hulk, the Vision, the Falcon, the Winter Soldier, Ghost Rider, Blade, Daredevil, Ms. Marvel, Miles Morales, the Punisher and Deadpool. Superhero teams exist such as
                the Avengers, the X-Men, the Fantastic Four and the Guardians of the Galaxy. The Marvel universe also features well-known
                supervillains including Doctor Doom, Magneto, Thanos, Loki, Green Goblin, Kingpin, Red Skull, Ultron, the Mandarin, MODOK, Doctor Octopus,
                Kang, Dormammu, Venom and Galactus. Most of Marvel's fictional characters operate in a single reality known as the Marvel Universe, with most
                locations mirroring real-life places; many major characters are based in New York City. Additionally, Marvel has published several licensed properties from other
                companies. This includes Star Wars comics twice from 1977 to 1986 and again since 2015.
                <br>
                <br>
                In 1968, while selling 50 million comic books a year, company founder Goodman revised the constraining distribution arrangement with Independent News he had reached under duress during the Atlas years, allowing him now to release as many titles as demand warranted. Late that year, he sold Marvel Comics and its parent company, Magazine Management, to the Perfect Film and Chemical Corporation,
                though he remained as publisher. In 1969, Goodman finally ended his distribution deal with Independent by signing with Curtis Circulation Company.
            </div>
            <br />
            <div class="alert alert-default" style="background-color:#033c73;">
                <p style="color:white;text-align:center;">
                    &copy 2021 ATN Store | All Rights Reserved | Design by : zolmkoz
                </p>
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- /#wrapper -->


    <!-- Mediul Modal -->
    <div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="myMediulModalLabel">
        <div class="modal-dialog modal-md">
            <div style="color:white;background-color:#008CBA" class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h2 style="color:white" class="modal-title" id="myModalLabel">Upload Items</h2>
                </div>
                <div class="modal-body">
                    <form enctype="multipart/form-data" method="post" action="additems.php">
                        <fieldset>
                            <p>Name of Item:</p>
                            <div class="form-group">
                                <input class="form-control" placeholder="Name of Item" name="item_name" type="text" required>
                            </div>
                            <p>Quantity:</p>
                            <div class="form-group">
                                <input class="form-control" placeholder="Quantity" name="item_name" type="text" required>
                            </div>
                            <p>Store branch:</p>
                            <div class="form-group">
                                <input class="form-control" placeholder="Store branch" name="item_name" type="text" required>
                            </div>
                            <p>Price:</p>
                            <div class="form-group">
                                <input id="priceinput" class="form-control" placeholder="Price" name="item_price" type="text" required>
                            </div>
                            <p>Choose Image:</p>
                            <div class="form-group">
                                <input class="form-control" type="file" name="item_image" accept="image/*" required />
                            </div>
                        </fieldset>
                </div>
                <div class="modal-footer">

                    <button class="btn btn-success btn-md" name="item_save">Save</button>

                    <button type="button" class="btn btn-danger btn-md" data-dismiss="modal">Cancel</button>


                    </form>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" charset="utf-8">
        $(document).ready(function() {
            $('#priceinput').keypress(function(event) {
                return isNumber(event, this)
            });
        });

        function isNumber(evt, element) {

            var charCode = (evt.which) ? evt.which : event.keyCode

            if (
                (charCode != 45 || $(element).val().indexOf('-') != -1) &&
                (charCode != 46 || $(element).val().indexOf('.') != -1) &&
                (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
    </script>
</body>

</html>