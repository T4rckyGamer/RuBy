<?php
ob_start();
define('API_KEY','1604551082:AAHLuymy1MbSyM52B15fJQk5XwNtQXp8e-I');
//-----------------------------------------------------------------------------------------
//فانکشن MrPHPBot :
function MrPHPBot($method,$datas=[]){
    $url = "https://api.telegram.org/bot".API_KEY."/".$method;
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    curl_setopt($ch,CURLOPT_POSTFIELDS,$datas);
    $res = curl_exec($ch);
    if(curl_error($ch)){
        var_dump(curl_error($ch));
    }else{
        return json_decode($res);
    }
}
//-----------------------------------------------------------------------------------------
//متغیر ها :
$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$from_id = $message->from->id;
mkdir("data/$from_id");
$chat_id = $message->chat->id;
mkdir("data/$chat_id");
mkdir("data/$chat_id/$from_id");
$message_id = $message->message_id;
$first_name = $message->from->first_name;
$last_name = $message->from->last_name;
$username = $message->from->username;
mkdir("data/username.txt/$username");
$textmassage = $message->text;
$chatid = $update->callback_query->message->chat->id;
$fm = $update->callback_query->from->id;
$step= file_get_contents("data/$from_id/file.txt");
$owners= file_get_contents("data/$chat_id/owner.txt");
$owners2= file_get_contents("data/$chatid/owner.txt");
$locklink= file_get_contents("data/$chat_id/locklink.txt");
$welcome= file_get_contents("data/$chat_id/welcome.txt");
$textwelcome= file_get_contents("data/$chat_id/textwelcome.txt");
$Dev = 909279851;
$txtt = file_get_contents('data/users.txt');
$forward_from_chat = $update->message->forward_from_chat;
$from_chat_id = $forward_from_chat->id;
$data = $update->callback_query->data;
$firstcall = $update->callback_query->message->chat->first_name;
$usercall = $update->callback_query->message->chat->username;
$messageid = $update->callback_query->message->message_id;
$tc = $update->message->chat->type;
$gpname = $update->callback_query->message->chat->title;
$textpost = file_get_contents("data/$chatid/textpost.txt");
$linkpost = file_get_contents("data/$chatid/linkpost.txt");
$namepost = file_get_contents("data/$chatid/namepost.txt");
$channel = file_get_contents("data/$chatid/channel.txt");
$newchatmemberid = $update->message->new_chat_member->id;
$newchatmemberu = $update->message->new_chat_member->username;
$rt = $update->message->reply_to_message;
$replyid = $update->message->reply_to_message->message_id;
$rtid = $update->message->reply_to_message->from->id;
$tedadmsg = $update->message->message_id;
$fwd = $update->message->forward_from;
$edit = $update->edited_message->text;
$message_edit_id = $update->edited_message->message_id;
$chat_edit_id = $update->edited_message->chat->id;
$edit_for_id = $update->edited_message->message->from->id;
$locklink= file_get_contents("data/$chat_id/locklink.txt");
$lockphoto= file_get_contents("data/$chat_id/lockphoto.txt");
$lockedit= file_get_contents("data/$chat_id/lockedit.txt");
$lockgame= file_get_contents("data/$chat_id/lockgame.txt");
$locklocation= file_get_contents("data/$chat_id/locklocation.txt");
$lockcontact= file_get_contents("data/$chat_id/lockcontact.txt");
$lockusername= file_get_contents("data/$chat_id/lockusername.txt");
$lockaudio= file_get_contents("data/$chat_id/lockaudio.txt");
$namegroup = $update->message->chat->title;
$lockvoice= file_get_contents("data/$chat_id/lockvoice.txt");
$locksticker= file_get_contents("data/$chat_id/locksticker.txt");
$lockjoin= file_get_contents("data/$chat_id/lockjoin.txt");
$lockdecument= file_get_contents("data/$chat_id/lockdecument.txt");
$lockvideo= file_get_contents("data/$chat_id/lockvideo.txt");
$lockgif= file_get_contents("data/$chat_id/lockgif.txt");
$lockforward= file_get_contents("data/$chat_id/lockforward.txt");
$lockoperator= file_get_contents("data/$chat_id/lockoperator.txt");
$lockfosh= file_get_contents("data/$chat_id/lockfosh.txt");
$locklink2= file_get_contents("data/$chatid/locklink.txt");
$lockphoto2= file_get_contents("data/$chatid/lockphoto.txt");
$lockedit2= file_get_contents("data/$chatid/lockedit.txt");
$lockgame2= file_get_contents("data/$chatid/lockgame.txt");
$locklocation2= file_get_contents("data/$chatid/locklocation.txt");
$lockcontact2= file_get_contents("data/$chatid/lockcontact.txt");
$lockusername2= file_get_contents("data/$chatid/lockusername.txt");
$lockaudio2= file_get_contents("data/$chatid/lockaudio.txt");
$lockvoice2= file_get_contents("data/$chatid/lockvoice.txt");
$locksticker2= file_get_contents("data/$chatid/locksticker.txt");
$lockjoin2= file_get_contents("data/$chatid/lockjoin.txt");
$lockdecument2= file_get_contents("data/$chatid/lockdecument.txt");
$lockvideo2= file_get_contents("data/$chatid/lockvideo.txt");
$lockgif2= file_get_contents("data/$chatid/lockgif.txt");
$lockforward2= file_get_contents("data/$chatid/lockforward.txt");
$lockoperator2= file_get_contents("data/$chatid/lockoperator.txt");
$lockbots2= file_get_contents("data/$chatid/lockbots.txt");
$lockfosh2= file_get_contents("data/$chatid/lockfosh.txt");
$lockbots= file_get_contents("data/$chat_id/lockbots.txt");
$floods= file_get_contents("data/$chat_id/lockflood.txt");
$floods2= file_get_contents("data/$chatid/lockflood.txt");
$flood= file_get_contents("data/$chat_id/numflood.txt");
$flood2= file_get_contents("data/$chatid/numflood.txt");
$text = $update->inline_qurey->qurey;
$token = API_KEY;
$stat = file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_id&user_id=".$from_id);
$statjson = json_decode($stat, true);
$status = $statjson['result']['status'];
$lockedit3 = file_get_contents("data/$chat_edit_id/lockedit.txt");
$get = file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_edit_id&user_id=".$edit_for_id);
$info = json_decode($get, true);
$you = $info['result']['status'];
//-----------------------------------------------------------------------------------------
//فانکشن ها :
function SendMessage($chat_id, $text){
MrPHPBot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$text,
'parse_mode'=>'MarkDown']);
}
function save($filename, $data)
{
$file = fopen($filename, 'w');
fwrite($file, $data);
fclose($file);
}
function sendAction($chat_id, $action){
MrPHPBot('sendChataction',[
'chat_id'=>$chat_id,
'action'=>$action]);
}
function Forward($berekoja,$azchejaei,$kodompayam)
{
MrPHPBot('ForwardMessage',[
'chat_id'=>$berekoja,
'from_chat_id'=>$azchejaei,
'message_id'=>$kodompayam
]);
}
//-----------------------------------------------------------------------------------------
if($textmassage=="/start" && $tc == "private"){
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"*اهــلا بـك عزيــزي 🔻

يمكنك من خلال 🔉 هذا البوت ان تحمي مجموعتك 🌀

فقط اضف البوت 🚸 الى مجموعتك وقــم ♻️ برفعه اداري وقم 🐾 بارسال ٲمــر تفعيل ⚡️ 

« لـعرض اوامر البوت ارسل ( الاوامر ) في المجموعة* ✨ »
                    *👣➖➖➖➖👣*
*Welcome dear* 🔻

*With 🚸 this bot can protect your group*

*Just add the 🐾 bot to your group and remove it administratively ⚡️ and send  /add* 💭

«*For orders sent /help in group* ✨»",
  'parse_mode'=>'MarkDown',
	]);
	}
 //groupmanager
 elseif($data=="settings" && $fm == $owners2){
         MrPHPBot('editmessagetext',[
             'chat_id'=>$chatid,
  'message_id'=>$messageid,
  'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸",
	'reply_markup'=>json_encode([
	'resize_keyboard'=>true,
	'inline_keyboard'=>[
 [
 ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
 ],
  [
 ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
 ],
  [
 ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
 ],
  [
 ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
 ],
  [
 ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
 ],
  [
 ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
 ],
  [
 ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
 ],
  [
 ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
 ],
  [
 ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
 ],
  [
 ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
 ],
  [
 ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
 ],
  [
 ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
 ],
  [
 ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
 ],
 [
['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
],
[
['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockvideo']
],
[
['text'=>"العودة ☄",'callback_data'=>'back']
],
	]
	])
	]);
	}
  elseif($data=="back" && $fm == $owners2){
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
   'text'=>"اهلا بك 🚸 اختر  🐾 ماتريد ⚡️ :-

تابع 🔉 من❕فضلك 👣 :- @Xxx_DEVRAMI_xxX",
    'parse_mode'=>'MarkDown',
    'reply_markup'=>json_encode([
    'resize_keyboard'=>true,
    'inline_keyboard'=>[
   [
   ['text'=>"الاوامر ☄",'callback_data'=>'settings']
   ],
    [
   ['text'=>"معلومات المجموعههہ ⚡️",'callback_data'=>'groupe'],['text'=>"الاوامر الخاصة 🐾",'callback_data'=>'help']
   ],
   [
['text'=>"فريق TEAMDEV 🚸",'url'=>"https://telegram.me/Xxx_DEVRAMI_xxX"]
  ],
    ]
    ])
    ]);
    }
  elseif($textmassage=="انلاين" && $from_id == "$owners"){
  if ($tc == 'group' | $tc == 'supergroup'){
    sendAction($chat_id, 'typing');
  	MrPHPBot('sendmessage',[
  	'chat_id'=>$chat_id,
  	'text'=>"اهلا بك 🚸 اختر  🐾 ماتريد ⚡️ :-

تابع 🔉 من❕فضلك 👣 :- @Xxx_DEVRAMI_xxX",
    'parse_mode'=>'MarkDown',
  	'reply_markup'=>json_encode([
  	'resize_keyboard'=>true,
  	'inline_keyboard'=>[
   [
   ['text'=>"الاوامر ☄",'callback_data'=>'settings']
   ],
    [
   ['text'=>"معلومات المجموعههہ ⚡️",'callback_data'=>'groupe'],['text'=>"الاوامر الخاصة 🐾",'callback_data'=>'help']
   ],
   [
['text'=>"فريق TEAMDEV 🚸",'url'=>"https://telegram.me/Xxx_DEVRAMI_xxX"]
  ],
  	]
  	])
  	]);
  	}}
    elseif($data=="groupe" && $fm == $owners2){
            MrPHPBot('editmessagetext',[
                'chat_id'=>$chatid,
     'message_id'=>$messageid,
               'text'=>"معلومات المجموعة هي 🚸:\n\nآسم المجموعههہ ☄ : $gpname\nايدي المجموعههہ ⚡️ : $chatid\nرسائل المجموعههہ 🐾 : $messageid\nايديك 🔥 : $owners2\n",
               'reply_markup'=>json_encode([
                   'inline_keyboard'=>[
                     [
                     ['text'=>"العودة ☄",'callback_data'=>'back']
                     ],
                      ]
               ])
           ]);
    }
    elseif($data=="help" && $fm == $owners2){
            MrPHPBot('editmessagetext',[
                'chat_id'=>$chatid,
     'message_id'=>$messageid,
               'text'=>"اهلا بـك 🐾 في قائمة الاوامر 🚸 

*➖🔹➖🔹➖🔹➖🔹➖

انلاين ➖ ( للحصول على اعدادات البوت انلاين ) 🔑
طرد ➖ ( بالرد لطرد عضو من المجموعة ) 🔉

➖➖➖➖➖➖➖➖

 اوامر 🐾 الحماية هي :- 🔻

ֆ • • • • • • • • • • • • • ֆ
قفل - للقفل  🔊 
فتح - للفتح ☄
ֆ • • • • • • • • • • • • • ֆ

الروابط ➖ ( لقفل او فتح الروابط ) 💭
اليوزر ➖ ( لقفل او فتح اليوزر بالمجموعة ) 👣

الملصقات ➖ ( لقفل او فتح الملصقات بالمجموعة ) 🎵
الجهات ➖ ( لقفل او فتح الجهات بالمجموعة ) 🌀

التوجيه ➖ ( لقفل او فتح التوجيه بالمجموعة ) 💡
الصور ➖ ( لقفل او فتح الصور بالمجموعة ) 👅

الموسيقى ➖ ( لقفل او فتح الاغاني بالمجموعة ) 👁‍🗨
الصوت ➖ ( لقفل او فتح الصوت بالمجموعه ) 🚼

التعديل ➖ ( لقفل او فتح التعديل بالمجموعة ) 🔉
الالعاب ➖ ( لقفل او فتح الالعاب بالمجموعة ) 🚸

الموقع ➖ ( لقفل او فتح مدري بالمجموعه ) 🎙
الكلمات السيئة ➖ ( لقفل او فتح مدري بالمجموعة ) 🕸

الاشعارات ➖ ( لقفل او فتح اشعارات الدخول ) ⚡️
الملفات ➖ ( لقفل او فتح الملفات بالمجموعه ) 🔻

الفديو ➖ ( لقفل او فتح الفديو بالمجموعة ) 🔺
البوتات ➖ ( لقفل او فتح البوتات بالمجموعة ) 🔑

التكرار ➖ ( لقفل التكرار في المجموعة ) 🔇
ֆ • • • • • • • • • • • • • ֆ
اوامر تخص 🔇 المجموعة ✔️ :-

وضع اسم ➖ [ اسم ] ➖ ( لتحديد اسم المجموعة ) 💭

وضع وصف ➖ [ النص ] ➖ ( لتغيير وصف المجموعة ) ☄
وضع صورة ➖ ( لوضع صورة المجموعة ) 🔥

تثبيت ➖ ( بالرد على رسالة لتثبيتها ) ✨
الغاء تثبيت ➖ ( بالرد على الرسالة للمثبتة للالغاء تثبيتها ) 🌀

رفع مدير ➖ [ الرد ] ( لرفع مدير في البوت ) ♻️
الوضع التلقائي ➖ ( يقوم البوت ب حماية المجموعة تلقائيا ) ❕

تتظيف + العدد ➖ ( لحذف العدد من الرسائل من 0 - 100 ) 

مثال :- تنظيف 70 📮
سوف يقوم البوت بحذف 70 رسالة 🔑

وضع تكرار + العدد ➖ ( لوضع تكرار للمجموعة ) ☑️
ֆ • • • • • • • • • • • • • ֆ

تفعيل الترحيب ➖ ( لتشغيل الترحيب بالمجموعة ) ✔️

وضع ترحيب ➖ ( لوضع ترحيب للمجموعة ) 🔊
ֆ • • • • • • • • • • • • • ֆ
DEV ☄ :- @RAMBO_SYR
CH ⚡️ :- @Xxx_DEVRAMI_xxX*",
            'parse_mode'=>'MarkDown',
               'reply_markup'=>json_encode([
                   'inline_keyboard'=>[
                     [
                     ['text'=>"العودة ☄",'callback_data'=>'back']
                     ],
                      ]
               ])
           ]);
    }
  elseif($data=="lockphoto" && $lockphoto2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockphoto.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockphoto" && $lockphoto2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockphoto.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockvideo" && $lockvideo2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockvideo.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockvideo" && $lockvideo2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockvideo.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockgame" && $lockgame2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockgame.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockgame" && $lockgame2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockgame.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="locksticker" && $locksticker2=="✔️" && $fm == $owners2){
    save("data/$chatid/locksticker.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="locksticker" && $locksticker2=="✖️" && $fm == $owners2){
    save("data/$chatid/locksticker.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockvoice" && $lockvoice2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockvoice.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockvoice" && $lockvoice2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockvoice.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockaudio" && $lockaudio2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockaudio.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockaudio" && $lockaudio2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockaudio.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockforward" && $lockforward2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockforward.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockforward" && $lockforward2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockforward.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockcontact" && $lockcontact2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockcontact.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockcontact" && $lockcontact2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockcontact.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="locklucton" && $locklocation2=="✔️" && $fm == $owners2){
    save("data/$chatid/locklocation.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockluction" && $locklocation2=="✖️" && $fm == $owners2){
    save("data/$chatid/locklocation.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockfosh" && $lockfosh2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockfosh.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockfosh" && $lockfosh2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockfosh.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockoperator" && $lockoperator2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockoperator.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockoperator" && $lockoperator2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockoperator.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockedit" && $lockedit2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockedit.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
    elseif($rt && $textmassage=="/unkick" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
	MrPHPBot('unbanChatMember',[
    'chat_id'=>$chat_id,
    'user_id'=>$rtid
      ]);
MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"از اخراج خارج شد:|♥",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif( $textmassage == "مغادرة" && $from_id == $Dev){
	sendmessage($chat_id,"حسناً ⚡️ وداعا 🔉 عزيزي 🐾");
	MrPHPBot('leaveChat',[
	'chat_id'=>$chat_id,
	]);
}elseif($rt && $textmassage == "مسح" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
 MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$update->message->reply_to_message->message_id
    ]);
	}
}
  elseif($data=="lockedit" && $lockedit2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockedit.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockusername" && $lockusername2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockusername.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockusername" && $lockusername2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockusername.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="locklink" && $locklink2=="✔️" && $fm == $owners2){
    save("data/$chatid/locklink.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                  	]
             ])
         ]);
  }
  elseif($data=="locklink" && $locklink2=="✖️" && $fm == $owners2){
    save("data/$chatid/locklink.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اعدادات 🐾 المجموعة ⚡️ ياعزيزي كما يلي :- 🚸

مفتوح = ✖️
مقفول = ✔️

تابع 🐾 من ⚡️ فضلك ☄ :- @Xxx_DEVRAMI_xxX 💛",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"$lockbots2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                  	]
             ])
         ]);
  }
  elseif($data=="lockbots2" && $lockbots2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockbots.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockbots2" && $lockbots2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockbots.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"الروابط ⚡️",'callback_data'=>'text'],['text'=>"$locklink2",'callback_data'=>'locklink']
                   ],
                    [
                   ['text'=>"الصور 🐾",'callback_data'=>'text'],['text'=>"$lockphoto2",'callback_data'=>'lockphoto']
                   ],
                    [
                   ['text'=>"اليوزر❕",'callback_data'=>'text'],['text'=>"$lockusername2",'callback_data'=>'lockusername']
                   ],
                    [
                   ['text'=>"التعديل 🔥",'callback_data'=>'text'],['text'=>"$lockedit2",'callback_data'=>'lockedit']
                   ],
                    [
                   ['text'=>"التبليغات 🌀",'callback_data'=>'text'],['text'=>"$lockoperator2",'callback_data'=>'lockoperator']
                   ],
                    [
                   ['text'=>"الكلمات السيئة 👣",'callback_data'=>'text'],['text'=>"$lockfosh2",'callback_data'=>'lockfosh']
                   ],
                    [
                   ['text'=>"الاشعارات ☄",'callback_data'=>'text'],['text'=>"$locklocation2",'callback_data'=>'lockluction']
                   ],
                    [
                   ['text'=>"الجهات 🚸",'callback_data'=>'text'],['text'=>"$lockcontact2",'callback_data'=>'lockcontact']
                   ],
                    [
                   ['text'=>"التوجيه 💥",'callback_data'=>'text'],['text'=>"$lockforward2",'callback_data'=>'lockforward']
                   ],
                    [
                   ['text'=>"الموسیقی 🕸 🕸",'callback_data'=>'text'],['text'=>"$lockaudio2",'callback_data'=>'lockaudio']
                   ],
                    [
                   ['text'=>"الصوت 🌙",'callback_data'=>'text'],['text'=>"$lockvoice2",'callback_data'=>'lockvoive']
                   ],
                    [
                   ['text'=>"الملصقات 💭",'callback_data'=>'text'],['text'=>"$locksticker2",'callback_data'=>'locksticker']
                   ],
                    [
                   ['text'=>"الالعاب 🔺",'callback_data'=>'text'],['text'=>"$lockgame2",'callback_data'=>'lockgame']
                   ],
                   [
                  ['text'=>"الفيديو ✨",'callback_data'=>'text'],['text'=>"$lockvideo2",'callback_data'=>'lockvideo']
                  ],
                  [
                  ['text'=>"البوتات 📮",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockbots2']
                  ],
                  [
                  ['text'=>"العودة ☄",'callback_data'=>'back']
                  ],
                    ]
             ])
         ]);
  }
elseif (strpos($textmassage, "رفع مدير") !== false && $from_id == $owners) {
$owner = str_replace("رفع مدير","",$textmassage);
save("data/$from_id/file.txt","none");
MrPHPBot('sendMessage',[
        	'chat_id'=>$chat_id,
        	'text'=>"تم رفع 🐾 العضو ⚡️ مدير♕ في البوت 🚸",
		'parse_mode'=>'MarkDown'
    		]);
save("data/$chat_id/owner.txt","$owner");
}
elseif(preg_match("/^(.*)([Hh]ttp|[Hh]ttps|t.me)(.*)|([Hh]ttp|[Hh]ttps|t.me)(.*)|(.*)([Hh]ttp|[Hh]ttps|t.me)|(.*)[Tt]elegram.me(.*)|[Tt]elegram.me(.*)|(.*)[Tt]elegram.me|(.*)[Tt].me(.*)|[Tt].me(.*)|(.*)[Tt].me/",$textmassage)){
preg_match("/^(.*)([Hh]ttp|[Hh]ttps|t.me)(.*)|([Hh]ttp|[Hh]ttps|t.me)(.*)|(.*)([Hh]ttp|[Hh]ttps|t.me)|(.*)[Tt]elegram.me(.*)|[Tt]elegram.me(.*)|(.*)[Tt]elegram.me|(.*)[Tt].me(.*)|[Tt].me(.*)|(.*)[Tt].me/",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($locklink == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
 MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الروابط" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/locklink.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الروابط ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($textmassage=="فتح الروابط" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/locklink.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الروابط ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($update->message->photo){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockphoto == "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الصور" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockphoto.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الصور ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الصور" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockphoto.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الصور ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif ($textmassage == "الوضع التلقائي" && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/lockvideo.txt","✖️");
save("data/$chat_id/lockbots.txt","✔️");
save("data/$chat_id/locklink.txt","✔️");
save("data/$chat_id/lockphoto.txt","✖️");
save("data/$chat_id/lockedit.txt","✔️");
save("data/$chat_id/lockoperator.txt","✔️");
save("data/$chat_id/lockforward.txt","✔️");
save("data/$chat_id/lockaudio.txt","✖️");
save("data/$chat_id/locksticker.txt","✖️");
save("data/$chat_id/lockvoice.txt","✖️");
save("data/$chat_id/lockcontact.txt","✔️");
save("data/$chat_id/locklocation.txt","✖️");
save("data/$chat_id/lockfosh.txt","✖️");
save("data/$chat_id/lockjoin.txt","✖️");
save("data/$chat_id/lockgame.txt","✖️");
save("data/$chat_id/lockdecument.txt","✖️");
save("data/$chat_id/lockusername.txt","✔️");
save("data/$chat_id/lockflood.txt","✔️");
save("data/$chat_id/numflood.txt","3");
save("data/$chat_id/welcome.txt","اهلا عزيزي العضو انرت المجموعة ⚡️ يرجى الالتزام 🐾 بالقوانين لكي ♻️ لا يتم طردك تابع :- @Xxx_DEVRAMI_xxX 🔉");
SendMessage($chat_id,"تم تفعيل ⚡️ الوضع التلقائي 🐾 للمجموعة 🚸");
}
}
elseif ($textmassage == "تفعيل" && $status == "creator") {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/owner.txt","$from_id");
save("data/$chat_id/lockvideo.txt","✖️");
save("data/$chat_id/lockbots.txt","✖️");
save("data/$chat_id/locklink.txt","✖️");
save("data/$chat_id/lockphoto.txt","✖️");
save("data/$chat_id/lockedit.txt","✖️");
save("data/$chat_id/lockoperator.txt","✖️");
save("data/$chat_id/lockforward.txt","✖️");
save("data/$chat_id/lockaudio.txt","✖️");
save("data/$chat_id/locksticker.txt","✖️");
save("data/$chat_id/lockvoice.txt","✖️");
save("data/$chat_id/lockcontact.txt","✖️");
save("data/$chat_id/locklocation.txt","✖️");
save("data/$chat_id/lockfosh.txt","✖️");
save("data/$chat_id/lockjoin.txt","✖️");
save("data/$chat_id/lockgame.txt","✖️");
save("data/$chat_id/lockdecument.txt","✖️");
save("data/$chat_id/lockusername.txt","✖️");
save("data/$chat_id/lockflood.txt","✖️");
save("data/$chat_id/numflood.txt","0");
save("data/$chat_id/welcome.txt","اهلا عزيزي العضو انرت المجموعة ⚡️ يرجى الالتزام 🐾 بالقوانين لكي ♻️ لا يتم طردك تابع :- @Xxx_DEVRAMI_xxX 🔉");
SendMessage($chat_id,"تم تفعيل ⚡️ البوت في المجموعة 🐾 لرؤية اوامر الحماية ♻️ ارسل الاوامر 🚸 تابع :- @Xxx_DEVRAMI_xxX ❕");
}
}
elseif($rt && $textmassage=="رفع ادمن" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
 MrPHPBot('promoteChatMember',[
    'chat_id'=>$chat_id,
    'user_id'=>$rtid,
    'can_change_info'=>true,
    'can_post_messages'=>true,
	'can_edit_messages'=>true,
	'can_delete_messages'=>true,
	'can_invite_users'=>true,
	'can_restrict_members'=>true,
	'can_pin_messages'=>true,
	'can_promote_members'=>true
      ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم رفع 🐾 العضو الى ادمن♔ ⚡️ في البوت 🔉",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif($rt && $textmassage=="تنزيل ادمن" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
 MrPHPBot('promoteChatMember',[
    'chat_id'=>$chat_id,
    'user_id'=>$rtid,
    'can_change_info'=>false,
    'can_post_messages'=>false,
	'can_edit_messages'=>false,
	'can_delete_messages'=>false,
	'can_invite_users'=>false,
	'can_restrict_members'=>false,
	'can_pin_messages'=>false,
	'can_promote_members'=>false
      ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم تنزيل 🐾 الادمن الى عضو ⚡️ في البوت 🔉",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif($update->message->gif){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockgif == "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل المتحركه" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockgif.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال المتحركه ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح المتحركه" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockgif.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال المتحركه ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->video){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockvideo == "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الفيديو" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockvideo.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الفديو ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الفيديو" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockvideo.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الفديو ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}

if(preg_match("/^(.*)([Hh]ttp|[Hh]ttps|t.me)(.*)|([Hh]ttp|[Hh]ttps|t.me)(.*)|(.*)([Hh]ttp|[Hh]ttps|t.me)|(.*)[Tt]elegram.me(.*)|[Tt]elegram.me(.*)|(.*)[Tt]elegram.me|(.*)[Tt].me(.*)|[Tt].me(.*)|(.*)[Tt].me/",$edit)){
  preg_match("/^(.*)([Hh]ttp|[Hh]ttps|t.me)(.*)|([Hh]ttp|[Hh]ttps|t.me)(.*)|(.*)([Hh]ttp|[Hh]ttps|t.me)|(.*)[Tt]elegram.me(.*)|[Tt]elegram.me(.*)|(.*)[Tt]elegram.me|(.*)[Tt].me(.*)|[Tt].me(.*)|(.*)[Tt].me/",$textmassage,$match);
if ($lockedit3== "✔️"){
if ($you != "creator" && $you != "administrator"){
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_edit_id,
    'message_id'=>$message_edit_id
    ]);
	}
}
}
elseif($textmassage=="قفل التعديل" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockedit.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 التعديل ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح التعديل" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockedit.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 التعديل ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->game){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockgame== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الالعاب" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockgame.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 الالعاب ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الالعاب" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockgame.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 الالعاب ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->location){
if ($tc == 'group' | $tc == 'supergroup'){
if ($locklocation== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الموقع" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/locklocation.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الموقع ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الموقع" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/locklocation.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الموقع ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->contact){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockcontact== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الجهات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockcontact.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الجهات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الجهات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockcontact.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الجهات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if(preg_match("/^(.*)@|@(.*)|(.*)@(.*)/",$textmassage)){
preg_match("/^(.*)@|@(.*)|(.*)@(.*)/",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockusername == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل اليوزر" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockusername.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال المعرفات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($textmassage=="فتح اليوزر" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockusername.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال المعرفات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->audio){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockaudio== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الموسيقى" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockaudio.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الموسيقى ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الموسيقى" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockaudio.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الموسيقى ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->voice){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockvoice == "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الصوت" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockvoice.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الصوت ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الصوت" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockvoice.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الصوت ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->sticker){
if ($tc == 'group' | $tc == 'supergroup'){
if ($locksticker== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الملصقات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/locksticker.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الملصقات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الملصقات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/locksticker.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الملصقات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->decument){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockdecument== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الملفات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockdecument.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الملفات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح الملفات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockdecument.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الملفات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
if($update->message->forward_from){
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockforward== "✔️"){
if ($status != "creator" && $status != "administrator"){
sendAction($chat_id, 'typing');
 MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message->message_id
    ]);
 }
}
}
}
elseif($textmassage=="قفل التوجيه" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockforward.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 التوجيه ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}elseif($textmassage=="فتح التوجيه" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockforward.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 التوجيه ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
//Lock Operator
if(preg_match("/^(.*)ایرانسل|ایرانسل(.*)|(.*)ایرانسل(.*)|(.*)همراه اول(.*)|همراه اول(.*)|(.*)همراه اول/",$textmassage)){
preg_match("/^(.*)ایرانسل|ایرانسل(.*)|(.*)ایرانسل(.*)|(.*)همراه اول(.*)|همراه اول(.*)|(.*)همراه اول/",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockoperator == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}

elseif($textmassage=="قفل التبليغات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockoperator.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال التبليغات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($textmassage=="فتح التبليغات" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockoperator.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال التبليغات ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
//Lock Fosh
elseif(preg_match("'^(عير)(.*)'",$textmassage)){
preg_match("'^(كس)(.*)'",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockfosh == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif(preg_match("'^(كس)(.*)'",$textmassage)){
preg_match("'^(عير)(.*)'",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockfosh == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif(preg_match("'^(انيج)(.*)'",$textmassage)){
preg_match("'^(نيج)(.*)'",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockfosh == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif(preg_match("'^(كحبه)(.*)'",$textmassage)){
preg_match("'^(كحبة)(.*)'",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockfosh == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif(preg_match("'^(عير)(.*)'",$textmassage)){
preg_match("'^(كس)(.*)'",$textmassage,$match);
if ($tc == 'group' | $tc == 'supergroup'){
if ($lockfosh == "✔️"){
if ($status != "creator" && $status != "administrator"){
  save("data/$from_id/file.txt","none");
  sendAction($chat_id, 'typing');
	MrPHPBot('deletemessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$message_id
    ]);
	}
}
}
}
elseif($textmassage=="قفل الكلمات السيئة" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockfosh.txt","✔️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم قفل 🐾 ارسال الغلط ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($textmassage=="فتح الكلمات السيئة" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  save("data/$chat_id/lockfosh.txt","✖️");
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم فتح 🐾 ارسال الغلط ⚡️ في المجموعة 🔉",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($update->message->new_chat_title){
if ($tc == 'group' | $tc == 'supergroup'){
$newname = $update->message->new_chat_title;
sendAction($chat_id, 'typing');
MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم تغغير ⚡️ اسم المجموعة 🐾 الى ☄: $newname",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($update->message->new_chat_member){
if ($tc == "group" | $tc == "supergroup"){
if ($welcome == "✔️"){
sendAction($chat_id, 'typing');
MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"$textwelcome",
  'parse_mode'=>'MarkDown',
	]);
	}
}
}
 elseif($textmassage=="الاوامر" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"*اهلا بـك عزيزي 🐾 في قائمة الاوامر 🚸 

➖🔹➖🔹➖🔹➖🔹➖

انلاين ➖ ( للحصول على اعدادات البوت انلاين ) 🔑
طرد ➖ ( بالرد لطرد عضو من المجموعة ) 🔉

➖➖➖➖➖➖➖➖

 اوامر 🐾 حماية المجموعة هي :- 🔻

ֆ • • • • • • • • • • • • • ֆ
قفل - للقفل  🔊 
فتح - للفتح ☄
ֆ • • • • • • • • • • • • • ֆ

الروابط ➖ ( قفل او فتح الروابط ) 💭
اليوزر ➖ ( قفل او فتح اليوزر بالمجموعة ) 👣

الملصقات ➖ ( قفل او فتح الملصقات بالمجموعة ) 🎵
الجهات ➖ ( قفل او فتح الجهات بالمجموعة ) 🌀

التوجيه ➖ ( قفل او فتح التوجيه بالمجموعة ) 💡
الصور ➖ ( لقفل او فتح الصور بالمجموعة ) 👅

الموسيقى ➖ ( قفل او فتح الاغاني بالمجموعة ) 👁‍🗨
الصوت ➖ ( قفل او فتح الصوت بالمجموعه ) 🚼

التعديل ➖ ( قفل او فتح التعديل بالمجموعة ) 🔉
الالعاب ➖ ( لقفل او فتح الالعاب بالمجموعة ) 🚸

الموقع ➖ ( قفل او فتح مدري بالمجموعه ) 🎙
الكلمات السيئة ➖ ( قفل او فتح مدري بالمجموعة ) 🕸

الاشعارات ➖ ( قفل او فتح اشعارات الدخول ) ⚡️
التبليغات ➖ ( قفل او فتح التبليغ بالمجموعه ) 🔻

الفديو ➖ ( قفل او فتح الفديو بالمجموعة ) 🔺
البوتات ➖ ( قفل او فتح البوتات بالمجموعة ) 🔑

التكرار ➖ ( قفل التكرار في المجموعة ) 🔇
ֆ • • • • • • • • • • • • • ֆ
اوامر تخص 🔇 المجموعة ✔️ :-

وضع اسم + [ اسم ] ➖ ( لتغيير اسم المجموعة ) 💭

وضع وصف + [ النص ] ➖ ( لتغيير وصف المجموعة ) ☄
وضع صورة + ( لتغيير صورة المجموعة ) 🔥

تثبيت ➖ ( بالرد على رسالة لتثبيتها ) ✨
الغاء تثبيت ➖ ( بالرد على الرسالة للمثبتة للالغاء تثبيتها ) 🌀

رفع مدير ➖ [ *id* ] ( لرفع مدير في البوت ) ♻️
الوضع التلقائي ➖ ( يقوم البوت ب حماية المجموعة تلقائيا ) ❕

تتظيف + العدد ➖ ( لحذف العدد من الرسائل من 0 - 100 ) 

مثال :- تنظيف 70 📮
سوف يقوم البوت بحذف 70 رسالة 🔑

وضع تكرار + العدد ➖ ( لوضع تكرار للمجموعة ) ☑️
ֆ • • • • • • • • • • • • • ֆ

تفعيل الترحيب ➖ ( لتشغيل الترحيب بالمجموعة ) ✔️

وضع ترحيب ➖ ( لوضع ترحيب للمجموعة ) 🔊
ֆ • • • • • • • • • • • • • ֆ*

[اضغط هنا وتابع جديدنا ✔️](t.me/Xxx_DEVRAMI_xxX)",
  'parse_mode'=>'MarkDown',
	]);
	}
 }
elseif($rt && $textmassage=="تثبيت" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
 MrPHPBot('pinChatMessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$replyid
      ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم تثبيت ☄ الرسالة بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
  elseif($rt && $textmassage=="طرد" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
	MrPHPBot('KickChatMember',[
    'chat_id'=>$chat_id,
    'user_id'=>$rtid
      ]);
MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"تم طرد ☄ العضو بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾",
  'parse_mode'=>'MarkDown',
	]);
	}
}
elseif($textmassage=="معلومات المجموعة" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
  sendAction($chat_id, 'typing');
	MrPHPBot('sendmessage',[
	'chat_id'=>$chat_id,
	'text'=>"ايدي المجموعههہ ⚡️ : *$chat_id*
آسم المجموعههہ ☄ : *$namegroup*
رسائل المجموعههہ 🐾 : *$tedadmsg*
نوع المجموعههہ 🔥 : *$tc*",
  'parse_mode'=>'MarkDown',
	]);
	}
 }
$users = file_get_contents('data/username.txt');
$members = explode("\n", $users);
if (!in_array($username, $members)) {
    $adduser = file_get_contents('data/username.txt');
    $adduser .=$username . "\n";
    file_put_contents('data/username.txt', $adduser);
}$users = file_get_contents('data/users.txt');
$members = explode("\n", $users);
if (!in_array($chat_id, $members)) {
    $adduser = file_get_contents('data/users.txt');
    $adduser .= $chat_id . "\n";
    file_put_contents('data/users.txt', $adduser);
}elseif($textmassage=="مستخدمين البوت "){
                        $membersidd= explode("\n",$txtt);
                        $mmemcount = count($membersidd) -1;
                        sendAction($chat_id, 'typing');
				MrPHPBot('sendmessage',[
		'chat_id'=>$chat_id,
		'text'=>"عدد ☄ المستخدمين 🐾  : $mmemcount",
                'hide_keyboard'=>true,
		]);
		}elseif ($textmassage == 'اذاعة' && $from_id == $Dev) {
save("data/$from_id/file.txt","sendtoall");
         MrPHPBot('sendmessage',[
        	'chat_id'=>$Dev,
        	'text'=>"ارسل ⚡️ النص ☄ الان 🌪 تابع @Xxx_DEVRAMI_xxX 📨",
		'parse_mode'=>'MarkDown',
    		]);
}elseif ($step == 'sendtoall') {
$mem = fopen( "data/users.txt", 'r');
    while( !feof( $mem)) {
    $memuser = fgets( $mem);
save("data/$from_id/file.txt","to");
     MrPHPBot('sendmessage',[
          'chat_id'=>$memuser,        'text'=>$textmassage,
    'parse_mode'=>'MarkDown'
        ]);
    }
} elseif ($textmassage == 'توجيه للكل' && $from_id == $Dev) {
save("data/$from_id/file.txt","fortoall");
         MrPHPBot('sendmessage',[
        	'chat_id'=>$Dev,
        	'text'=>"ارسل ⚡️ النص ☄ الان 🌪 تابع @Xxx_DEVRAMI_xxX 📨",
		'parse_mode'=>'MarkDown',
    		]);
}elseif ($step == 'fortoall') {
$mem = fopen( "data/users.txt", 'r');
    while( !feof( $mem)) {
    $memuser = fgets( $mem);
save("data/$from_id/file.txt","none");
Forward($memuser, $chat_id,$message_id);
    }
}
elseif (strpos($textmassage , "وضع ترحيب") !== false && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
$we = str_replace("وضع ترحيب","",$textmassage);
save("data/$chat_id/textwelcome.txt","$we");
SendMessage($chat_id,"تم حفظ ☄ الترحيب بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾");
}
}
elseif (strpos($textmassage , "وضع تكرار") !== false && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
$we = str_replace("وضع تكرار","",$textmassage);
if ($we <= 20 && $we >= 1){
save("data/$chat_id/numflood.txt","$we");
SendMessage($chat_id,"تم حفظ ☄ التكرار بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾");
}
else{
MrPHPBot('sendmessage',[
 'chat_id' => $chat_id,
 'text'=>"عذرا اختر ☄ من 1 الى 20 ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾",
              ]);
}
}
}
elseif ($textmassage == "تفعيل الترحيب" && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/welcome.txt","✔️");
SendMessage($chat_id,"تم تفعيل ☄ الترحيب بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾");
}
}
elseif ($textmassage == "كتم التكرار" && $from_id == $Dev) {
rmdir("data/spam");
mkdir("data/spam");
SendMessage($chat_id,"#تم تابع @teamiraq");
}
elseif ($textmassage == "قفل التكرار" && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/lockflood.txt","✔️");
SendMessage($chat_id,"تم قفل 🐾 تكرار الرسائل ⚡️ في المجموعة 🔉");
}
}
elseif ($textmassage == "فتح التكرار" && $status == "creator") {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/lockflood.txt","✖️");
SendMessage($chat_id,"تم فتح 🐾 تكرار الرسائل ⚡️ في المجموعة 🔉");
}
}
elseif ($textmassage == "تفعيل الترحيب" && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/welcome.txt","✔️");
SendMessage($chat_id,"تم تفعيل ☄ الترحيب بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾");
}
}
elseif ($textmassage == "قفل البوتات" && $from_id == $owners) {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/lockbots.txt","✔️");
SendMessage($chat_id,"تم قفل 🐾 اضافة البوتات ⚡️ في المجموعة 🔉");
}
}
elseif ($textmassage == "فتح البوتات" && $status == "creator") {
if ($tc == 'group' | $tc == 'supergroup'){
save("data/$chat_id/lockbots.txt","✖️");
SendMessage($chat_id,"تم فتح 🐾 اضافة البوتات ⚡️ في المجموعة 🔉");
}
}
elseif (preg_match('/^(.*)([Bb][Oo][Tt])/s',$newchatmemberu) && $lockbots == "✔️" && $newchatmemberu != "SPDLBot") {
 MrPHPBot('sendMessage',[
 'chat_id'=>$chat_id,
 'text'=>'عذرا عزيزي ☄ ممنوع اضافة البوتات 🐾 هنا للاسف تم طرده ⚡️ تابع من فضلك :- @Xxx_DEVRAMI_xxX 🚸',
  'parse_mode'=>'HTML'
 ]);
 MrPHPBot('kickChatMember',[
 'chat_id'=>$chat_id,
  'user_id'=>$update->message->new_chat_member->id
  ]);
}
elseif ( strpos($textmassage , 'تنظيف') !== false  ) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($from_id == $owners){
$num = str_replace("تنظيف","",$textmassage);
if ($num <= 100 && $num >= 1){
for($i=$message_id; $i>=$message_id-$num; $i--){
MrPHPBot('deletemessage',[
 'chat_id' => $chat_id,
 'message_id' =>$i,
              ]);
}
MrPHPBot('sendmessage',[
 'chat_id' => $chat_id,
 'text' =>"تم حذف ☄ $num من الرسائل ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾",
              ]);
}else{
MrPHPBot('sendmessage',[
 'chat_id' => $chat_id,
 'text'=>"عذرا اختر ☄ من 1 الى 100 ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾",
              ]);
}
}
}
}
elseif ( strpos($textmassage , 'وضع اسم') !== false  ) {
  $newname= str_replace("وضع اسم","",$textmassage);
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
 MrPHPBot('setChatTitle',[
    'chat_id'=>$chat_id,
    'title'=>$newname
      ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم تغيير ⚡️ اسم المجموعة ☄ بنجاح تابع :- @Xxx_DEVRAMI_xxX 🐾",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif ( strpos($textmassage , 'وضع وصف') !== false  ) {
  $newdec= str_replace("وضع وصف","",$textmassage);
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
 MrPHPBot('setChatDescription',[
    'chat_id'=>$chat_id,
    'description'=>$newdec
      ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم تغيير ⚡️ وصف المجموعة ☄ بنجاح تابع :- @Xxx_DEVRAMI_xxX 🐾",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif($rt && $textmassage=="الغاء تثبيت" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
 MrPHPBot('unpinChatMessage',[
    'chat_id'=>$chat_id,
    'message_id'=>$replyid
      ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم الغاء تثبيت ☄ الرسالة بنجاح ⚡️ تابع :- @Xxx_DEVRAMI_xxX 🐾",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif($textmassage=="حذف صورة" && $from_id == $owners){
  save("data/$from_id/file.txt","setphoto");
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
MrPHPBot('deleteChatPhoto',[
   'chat_id'=>$chat_id,
     ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"تم تابع @Xxx_DEVRAMI_xxX",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif($textmassage=="/me" && $from_id == $owners){
$sti = "https://provps.ir/anti/Owner.webp";
if ($tc == 'group' | $tc == 'supergroup'){
  sendAction($chat_id, 'typing');
	MrPHPBot('sendSticker',[
	'chat_id'=>$chat_id,
	'sticker'=>$sti,
	]);
	}
}
elseif($textmassage=="/me" && $from_id == $Dev){
$sti = "https://provps.ir/anti/Dev.webp";
if ($tc == 'group' | $tc == 'supergroup'){
  sendAction($chat_id, 'typing');
	MrPHPBot('sendSticker',[
	'chat_id'=>$chat_id,
	'sticker'=>$sti,
	]);
	}
}
elseif($textmassage=="/me"){
$sti = "https://provps.ir/anti/Member.webp";
if ($tc == 'group' | $tc == 'supergroup'){
  sendAction($chat_id, 'typing');
	MrPHPBot('sendSticker',[
	'chat_id'=>$chat_id,
	'sticker'=>$sti,
	]);
	}
}
elseif($textmassage=="الرابط" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
sendAction($chat_id, 'typing');
MrPHPBot('sendmessage',[
   'chat_id'=>$chat_id,
   'text'=>"رابط ⚡️ المجموعة ☄ :-  \n$getlinkde",
    'parse_mode'=>'html',
     ]);
 }
}
elseif($textmassage=="وضع صورة" && $from_id == $owners){
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"ارسل صورة ⚡️ للمجموعة الان ☄ تابع :- @Xxx_DEVRAMI_xxX 🐾",
  'parse_mode'=>'MarkDown',
 ]);
 }
}
elseif($step=="setphoto"){
  save("data/$from_id/file.txt","none");
if ($tc == 'group' | $tc == 'supergroup'){
sendAction($chat_id, 'typing');
$photo = $update->message->photo;
$file = $photo[count($photo)-1]->file_id;
      $get = MrPHPBot('getfile',['file_id'=>$file]);
      $patch = $get->result->file_path;
    file_put_contents("data/$chat_id/photogp.png",file_get_contents("https://api.telegram.org/file/bot$token/$patch"));
MrPHPBot('setChatPhoto',[
   'chat_id'=>$chat_id,
   'photo'=>new CURLFile("data/$chat_id/photogp.png")
     ]);
MrPHPBot('sendmessage',[
 'chat_id'=>$chat_id,
 'text'=>"#DEV_RAMI",
  'parse_mode'=>'MarkDown',
 ]);
 unlink("data/$chat_id/photogp.png");
 }
}
elseif($textmassage=="اعدادات التكرار" && $from_id == "$owners"){
if ($tc == 'group' | $tc == 'supergroup'){
  sendAction($chat_id, 'typing');
  MrPHPBot('sendmessage',[
  'chat_id'=>$chat_id,
  'text'=>"   اعدادت ♻️ التكرار اختر ☄ من 1 الى 20 🐾 تابع عزيزي 🔉 @Xxx_DEVRAMI_xxX 🌪",
  'parse_mode'=>'MarkDown',
  'reply_markup'=>json_encode([
  'resize_keyboard'=>true,
  'inline_keyboard'=>[
 [
 ['text'=>"قفل التكرار 🚸",'callback_data'=>'text'],['text'=>"$floods",'callback_data'=>'lockflood']
 ],
  [
 ['text'=>"➖",'callback_data'=>'f-'],['text'=>"$flood",'callback_data'=>"numflood"],['text'=>"➕",'callback_data'=>'f+']
 ],
  ]
  ])
  ]);
  }}
  elseif($data=="f-"  && $fm == $owners2){
    $floodnew = $flood2 - 1;
    $floodnew1 = $flood2 - 1;
    save("data/$chatid/numflood.txt","$floodnew");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اختر ☄ العدد للتكرار 🐾 ياعزيزي ⚡️

لزيادة العدد 🔺 اضغط على ( ➕ ) 
لنقصان العدد 🔻 اضغط على ( ➖ ) 

*Follow TEAM DEV*⚡️ :- @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"قفل التكرار 🚸",'callback_data'=>'text'],['text'=>"$floods2",'callback_data'=>'lockflood']
                   ],
                    [
                   ['text'=>"➖",'callback_data'=>'f-'],['text'=>"$floodnew1",'callback_data'=>"numflood"],['text'=>"➕",'callback_data'=>'f+']
                   ],
                    ]
             ])
         ]);
  }
  elseif($data=="f+"  && $fm == $owners2){
    $floodne = $flood2 + 1;
    $floodne2 = $flood2 + 1;
    save("data/$chatid/numflood.txt","$floodne");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"اختر ☄ العدد للتكرار 🐾 ياعزيزي ⚡️

لزيادة العدد 🔺 اضغط على ( ➕ ) 
لنقصان العدد 🔻 اضغط على ( ➖ ) 

*Follow TEAM DEV*⚡️ :- @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"قفل التكرار 🚸",'callback_data'=>'text'],['text'=>"$floods2",'callback_data'=>'lockflood']
                   ],
                    [
                   ['text'=>"➖",'callback_data'=>'f-'],['text'=>"$floodne2",'callback_data'=>"numflood"],['text'=>"➕",'callback_data'=>'f+']
                   ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockflood" && $floods2=="✖️" && $fm == $owners2){
    save("data/$chatid/lockflood.txt","✔️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"قفل التكرار 🚸",'callback_data'=>'text'],['text'=>"✔️",'callback_data'=>'lockflood']
                   ],
                    [
                   ['text'=>"➖",'callback_data'=>'f-'],['text'=>"$flood2",'callback_data'=>"numflood"],['text'=>"➕",'callback_data'=>'f+']
                   ],
                    ]
             ])
         ]);
  }
  elseif($data=="lockflood" && $floods2=="✔️" && $fm == $owners2){
    save("data/$chatid/lockflood.txt","✖️");
          MrPHPBot('editmessagetext',[
              'chat_id'=>$chatid,
   'message_id'=>$messageid,
             'text'=>"*عزيزي ⚡️ الاوامر كما 🐾 يلي في الاسفل ☄  .. 
مفتوح = ✖️ 
مقفول = ✔️*

`تابع من ✨ فضلك 🚸` :-  @Xxx_DEVRAMI_xxX",
             'reply_markup'=>json_encode([
                 'inline_keyboard'=>[
                   [
                   ['text'=>"قفل التكرار 🚸",'callback_data'=>'text'],['text'=>"✖️",'callback_data'=>'lockflood']
                   ],
                    [
                   ['text'=>"➖",'callback_data'=>'f-'],['text'=>"$flood2",'callback_data'=>"numflood"],['text'=>"➕",'callback_data'=>'f+']
                   ],
                    ]
             ])
         ]);
  }
  elseif ($data == 'text')
{
MrPHPBot('answerCallbackQuery',[
'callback_query_id'=>$update->callback_query->id,
'text'=>"اضغط على ☄ علامة ال ( ✔️ ) او ( ✖️ ) ⚡️",
]);
}
$timing = date("Y-m-d-h-i-sa");
$timing = str_replace("am","",$timing);
$metti_khan = file_get_contents("data/spam/$timing-$from_id.txt");
$timing_spam = $metti_khan+1;
file_put_contents("data/spam/$timing-$from_id.txt","$timing_spam");
$metti_khan2 = file_get_contents("data/spam/$timing-$from_id.txt");
if($metti_khan2 >= $flood){
if($floods == "✔️"){
MrPHPBot('KickChatMember',[
    'chat_id'=>$chat_id,
    'user_id'=>$from_id
    ]);
    MrPHPBot('sendmessage',[
    	'chat_id'=>$chat_id,
    	'text'=>"عزيزي ⚡️ $first_name بسبب تكرار الرسائل 🔥 سوف يتم طردك 🐾 التزم بعدم التكرار 🌪 مرة اخرى 🔬",
      'parse_mode'=>'MarkDown',
    	]);

}
}
elseif ($text == "ads") {
}
{
   MrPHPBot('answerInlineQuery', [
        'inline_query_id' => $update->inline_query->id,
        'results' => json_encode([[
            'type' => 'article',
             'thumb_url'=>"http://up.upinja.com/mpjd9.jpg",
            'id' => base64_encode(rand(5, 555)),
            'title' => 'TEAMIRAQ',
            'input_message_content' => ['parse_mode' => 'MarkDown', 'message_text' => "*Follow TEAMDEV* ⚡️

*➖➖➖➖➖➖➖➖➖➖*
بوت ☄ جديد 🐾 مميزاتةة 🔥:-

• قفل التكرار + وضع تكرار
• تنظيف + عدد التنظيف 
• تثبيت + الغاء تثبيت
• حماية تلقائية
• يحتوي على الاوامر الشفافة ولغير شفافة
• سرعه فائقة ولم يتوقف ابدا
• تم حل جميع المشاكل 

*ֆ • • • • • • • • • • • • • ֆ*
• تابعنا ☄ :- فريق @Xxx_DEVRAMI_xxX

*Channels📡 : •┇TEAM DEV┇•*"],
            'reply_markup' => [
                'inline_keyboard' => [
                    [
                        ['text' => "جديدنا", 'url' => 'https://telegram.me/Xxx_DEVRAMI_xxX']
                    ],
                    [
                        ['text' => "اشتراک با دیگران", 'switch_inline_query' => 'ads']
                    ]
                ]
            ]
        ]])
    ]);
}
?>
n', 'message_text' =arse_mode' => 'MarkDown', 'message_text' => "*Follow TEAMDEV * ⚡️

*➖➖➖➖➖➖➖➖➖➖*
بوت ☄ جديد 🐾 مميزاتةة 🔥:-

• قفل التكرار + وضع تكرار
• تنظيف + عدد التنظيف 
• تثبيت + الغاء تثبيت
• حماية تلقائية
• يحتوي على الاوامر الشفافة ولغير شفافة
• سرعه فائقة ولم يتوقف ابدا
• تم حل جميع المشاكل 

*ֆ • • • • • • • • • • • • • ֆ*
• تابعنا ☄ :- فريق @Xxx_DEVRAMI_xxX

*Channels📡 : •┇TEAM DEV┇•*"],
            'reply_markup' => [
                'inline_keyboard' => [
