<?php echo $header; ?>


<div id="content">
    <?php echo $content_top; ?>


    <div id="yellow_cont">
        <div id="help_cont">
            <div id="help">
                <h3>Подсказка</h3>
                Нажмите на изображение, что-бы добавить фото в заказ.
                <div class="clear"></div>
                <div id="edit"><img src="catalog/view/theme/default/image/flag.png"></div>
                <div class="text">&mdash; редактировать</div>
                <div id="del"><img src="catalog/view/theme/default/image/flag.png"></div>
                <div class="text">&mdash; удалить</div>
                <div class="clear"></div>
            </div>
            <div id="corner"></div>
        </div>
        <div class="crumbs">
            <div class="left"></div>
            <div class="dark"><a href="<?php echo $this->url->link('account/account', '', 'SSL');?>">Личный кабинет</a></div>
            <div class="darkEnd"></div>
            <div class="light"><a href="<?php echo $this->url->link('album/album', '', 'SSL');?>">Мои фотоальбомы</a></div>
            <div class="lightEnd"></div>
            <div class="light2"><a href="<?php echo $this->url->link('album/content', 'album_id='.$album_id, 'SSL');?>"> <?php echo $albumName; ?></a></div>
            <div class="light2End"></div>
            <div class="light3">Редактируем фото и отправляем на печать</div>
            <div class="light3End"></div>
        </div>
        <div id="edit_photo_cont">
            <h1>Индивидуальные настройки печати</h1>
            <div id="photo_cont">
                <div id="price_cont"><span>60 коп</span>Стоимомть фотографии с выбранными параметрами</div>
                <div id="crop-preview">
                    <div id="crop-preview-container">
                        <img src="<?php echo $photo['path']?>">
                    </div>
                </div>
                <a class="left" <?php if ($photo['prev']!='') { ?>href="<?php echo $photo['prev']?>"<?php } ?>>Предыдущее фото</a>
                <a class="right" <?php if ($photo['next']!='') { ?>href="<?php echo $photo['next']?>"<?php } ?>>Следующее фото</a>
            </div>
            <div id="white">
                <div class="left">
                    <h2>Форматы печати</h2>
                    <?php foreach ($formats as $format) { ?>
                    <div>
                        <input type="checkbox" value="<?php echo $format['id']?>">
                        <?php echo $format['name']?> <span><?php echo $format['price']?>&nbsp;грн</span>
                    </div>
                    <?php } ?>


                </div>
                <div style="margin-left:70px" class="left">
                    <h2>Тип фотобумаги</h2>
                    <?php foreach ($papers as $paper) { ?>
                    <div><input type="checkbox" value="<?php echo $paper['id']?>"><?php echo $paper['name']?></div>
                    <?php } ?>


                </div>

            </div>
            <div id="bottom">Начальный размер: <font color="#000000">4374 х 2334рх</font><br>
                Размер после кадрирования <font color="#a80000">3348 х 2541рх</font></div>
        </div>
    </div>

    <div id="green_cont">
        <div style="float:right">
            <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="#" class="left">Применить к фото</a>

                <div class="right"></div>
            </div>
            <div class="clear"></div>
            <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="#" class="left">Применить к копии</a>

                <div class="right"></div>
            </div>
            <div class="clear"></div>
            <div onmouseout="$(this).removeClass('hover');" onmouseover="$(this).addClass('hover');" class="bigButton"
                 style="float:right"><a href="#" class="left">Вернуться к заказу</a>

                <div class="right"></div>
            </div>
        </div>
        <div id="edit_photo_buttons">
            <div class="linkCont"><a id="cropImgBtn" class="b1">Кадрировать</a></div>
            <div class="linkCont"><a href="#" class="b2">Повернуть<br>
                по часовой</a></div>
            <div class="linkCont"><a href="#" class="b3">Повернуть<br>против часовой</a></div>
            <div class="linkCont"><a href="#" class="b4">Удалить</a></div>
            <div style="margin:20px 0 0 0px; width:700px" id="step3_field_cont">
                <div class="cont">Цветокоррекция<br>
                    <select>
                        <option>Делать</option>
                        <option>Не делать</option>
                    </select>
                </div>
                <div class="cont">Обрезка<br>
                    <select>
                        <option>Без эффектов</option>
                        <option>С эффектами</option>
                    </select>
                </div>
                <div class="cont">Белая рамка<br>
                    <select>
                        <option>Без рамки</option>
                        <option>С рамкой</option>
                    </select>
                </div>
                <div class="cont">Красные глаза<br>
                    <select>
                        <option>Не делать</option>
                        <option>Делать</option>
                    </select>
                </div>
                <div class="cont">Эффект<br>
                    <select>
                        <option>Не делать</option>
                        <option>Делать</option>
                    </select>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>

    </div>
    <div id="cropImgDialog" title="Кадрировать изображение">
        <img src="<?php echo $photo['path']?>"/>
    </div>

    <script type="text/javascript" src="catalog/view/javascript/jquery/jcrop/js/jquery.Jcrop.min.js"></script>
    <link rel="stylesheet" href="catalog/view/javascript/jquery/jcrop/css/jquery.Jcrop.min.css"/>
    <script>
        $(function(){
            var boundX,
                boundY,

                $cropTarget = $('#cropImgDialog img'),
                $cropDialog = $('#cropImgDialog'),
                $cropButton = $('#cropImgBtn'),

                $preview = $('#crop-preview'),
                $previewContainer = $('#crop-preview-container'),
                $previewImg = $('#crop-preview-container img'),

                previewWidth = $previewContainer.width(),
                previewHeight,
                img = new Image(),
                windowWidth = $(window).width() - 50,
                windowHeight = $(window).height() - 50;

            img.src = $previewImg.attr('src');

            img.onload = function(){
                var realWidth = this.width + 25,
                    realHeight = this.height + 25;

                $cropDialog.dialog('option', 'width', realWidth > windowWidth ? windowWidth : realWidth);

                if(realHeight > windowHeight){
                    $cropDialog.dialog('option', 'height', realHeight > windowHeight ? windowHeight : realHeight);
                }
            };

            $cropDialog.dialog({
                autoOpen: false,
                modal: true,
                buttons: {
                    'Кадрировать': function(){
                        $(this).dialog('close');
                    }
                }
            });

            $cropButton.on('click', function () {
                previewHeight = $previewContainer.height();
                $previewContainer.css('height', previewHeight);

                $cropDialog.dialog('open');

                $cropTarget.Jcrop({
                    bgColor: 'white',
                    bgOpacity: 0.7,
                    onSelect: updatePreview
                }, function(){
                    boundX = this.getBounds()[0];
                    boundY = this.getBounds()[1];
                });
            });


            function updatePreview(coords) {
                if (parseInt(coords.w) > 0) {
                    var rx = previewWidth / coords.w,
                        ry = previewHeight / coords.h;

                    $previewImg.css({
                        width: Math.round(rx * boundX) + 'px',
                        height: Math.round(ry * boundY) + 'px',
                        marginLeft: '-' + Math.round(rx * coords.x) + 'px',
                        marginTop: '-' + Math.round(ry * coords.y) + 'px'
                    });
                }
            }
        });
    </script>

    <?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>