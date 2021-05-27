Return-Path: <open-iscsi+bncBDAKBNEQZYKRBKH2XSCQMGQE2UULCCI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8363927AE
	for <lists+open-iscsi@lfdr.de>; Thu, 27 May 2021 08:33:13 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id b19-20020a05620a0893b02902e956b29f5dsf2713870qka.16
        for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 23:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rykMgamtql0KT2HOw8iaJtd/NNvusZgYNJE2gt4vUSQ=;
        b=XdwuLUP1y4C2HDhowG+BRssW7Zlc6K01A+66jy+sSQJ/5+V2Lz6LIjzex9zEUF1T1D
         tZ42IiQj29KHIKKOUYaXjhZKe6qiq+GD6nIU4/uaSu5pcC2mZVfSLW7BswL1SzU/AfMk
         +EOhVmpjWlzCKKNrUTZHacuZNpL3uh9KfpoaFrAEaJqgBmtRJGsRMHcQ4pa7bo1OFgKa
         EgKY0uD/z15IfkFaxid6vMAqvbWWT79eIFJ7Pd8cIlSutf5gELn4+BOPabwMkvOLPmmc
         IWEPFrkgnHmByHWXivTvpCoLBnJO2Pv242UIM2LcQuL/YkWK7MgNUAQqeb1KDAJK7tA7
         8G6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version:x-original-sender:reply-to:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rykMgamtql0KT2HOw8iaJtd/NNvusZgYNJE2gt4vUSQ=;
        b=C42tKsG2Tc3nww7RCDojTKSp65b7Bw6CN3SKkPTJG/s98XMZzhk3q3L887D0wTL+LM
         Nu4sAj+IMrEcXZb0vdJ4Kx9+Q7UVsSTOxJSW7kkktJZsFQAgXLH9TIBMvlkx4cz+ED0F
         RTNj8kz0/5FDoS6DBBLTcYcCAOgepikzNfS2F0PQ4rmh2N6FrUBRRi/SoPglSxpKzH/g
         4Dl2m3U2/lJruIK180gDSXpKSPzjhaiTF3t28yozMCroPdRKaSN8uUZkmNEn0Z/YDdnC
         I0EaOpP8L7L1NFXZrcclio3dha5bMWJNputCnXFb+VEoCaPoL/kPFcBw4NwX+XxZQEBV
         OMrQ==
X-Gm-Message-State: AOAM533S2cqMM9vfwa5QHG/gSRIlNP9A8gEEPK+j61QPocCfC8zdwkp8
	lvbKKHoSGjbDUUZPdYW8pjE=
X-Google-Smtp-Source: ABdhPJxzwbaEdKi35JSyQup9pJjTgOYvZcj7RxRIcOXA5C3MtrTpvfqvfY1/qUy5vn+7jb0XFdcavg==
X-Received: by 2002:a37:6488:: with SMTP id y130mr1997383qkb.301.1622097192675;
        Wed, 26 May 2021 23:33:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:5f44:: with SMTP id t65ls1452099qkb.0.gmail; Wed, 26 May
 2021 23:33:12 -0700 (PDT)
X-Received: by 2002:a37:b6c4:: with SMTP id g187mr1948157qkf.491.1622097192119;
        Wed, 26 May 2021 23:33:12 -0700 (PDT)
Date: Wed, 26 May 2021 23:33:11 -0700 (PDT)
From: "'H. Giebels' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <d54dddca-dd0a-40a1-a698-a3107445beb5n@googlegroups.com>
In-Reply-To: <CAK3e-EYB3NurR6MzAzf2WBRUMDiKKbH23w3OFF8u86zW-nRj-g@mail.gmail.com>
References: <92ea6c0d-de4b-47f0-95c3-d22257089eban@googlegroups.com>
 <086c0e6e-4df9-409c-80a4-d611fd36a363n@googlegroups.com>
 <CAK3e-EYB3NurR6MzAzf2WBRUMDiKKbH23w3OFF8u86zW-nRj-g@mail.gmail.com>
Subject: Re: trimming iscsi luns?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_252_1302071430.1622097191345"
X-Original-Sender: pinguinpunk@googlemail.com
X-Original-From: "H. Giebels" <pinguinpunk@googlemail.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_252_1302071430.1622097191345
Content-Type: multipart/alternative; 
	boundary="----=_Part_253_1197968317.1622097191345"

------=_Part_253_1197968317.1622097191345
Content-Type: text/plain; charset="UTF-8"


Hello Don,

thanks very much for further elaborating on this. I completely forgot to 
mention, the taget side is lio / targetcli. Sorry for this.

Indeed I've got sidetracked by the non-flash notion of iscsiadm. But this 
refers to something else - probably to those mysterious flashnodes 
mentioned in the man page. 

The target lun is a sparse file on a xfs filesystem (ontop of a md0 raid, 
but with trim enabled: raid456.devices_handle_discard_safely=Y)

The filesystem on the lun itself is f2fs. That does report discard 
capabilities already during mkfs time. At least, if -t=1 is specified. 

Now I did a quick test with deleting half of the mounted lun, and indeed, 
the real size of beforementioned sparse file shrunk. Took a while, but 
finally I can confirm, setting emulate_tpu=1 on the target side does do the 
trick. If the backend supports it, of course. 

I would suspect, it would work the same way for block based backstores 
(thin provisioned lvm, sparse zvols), but currently I have no means to 
verify this. 

Just for future reference, as I have had troubles correctly interviewing 
google about this. 

don.e.w...@gmail.com schrieb am Mittwoch, 26. Mai 2021 um 19:07:20 UTC+2:

> Hello, 
>  It is also the OS/filesystem that must support the TRIM or UNMAP 
> command.  I.e. in EXT4 you have to set the option 'discard' when mounting a 
> volume to support TRIM/UNMAP feature. Using something like 'fsttrim' 
>
>  If your backend storage is RAIDed then typically any SSDs are not 
> presented as SSD/FLASH drives to the host. Physical drives are virtualized 
> by the RAID controller and LUNs are presented to the host.  
>
>   Once the TRIM/UNMAP command is sent  it's up to the backend storage 
> device to handle that properly. 
>
>  Open-iSCSI itself is the transport to the target from the OS.  It does 
> not initiate TRIP/UNMAP or any other SCSI commands on its own.  It will 
> pass along those SCSI commands the OS sends and send back all results. 
>
>  Regards, 
> Don 
>
>
>  
>  
>
> On Wed, May 26, 2021 at 10:33 AM 'H. Giebels' via open-iscsi <
> open-...@googlegroups.com> wrote:
>
>> I think I've got it. It is the emulate_tpu parameter on the target side. 
>> Needs some more confirmation, though
>>
>> H. Giebels schrieb am Mittwoch, 26. Mai 2021 um 15:26:39 UTC+2:
>>
>>>
>>> Hello,
>>>
>>> not exactly sure, wether this is an issue of targetcli or open iscsi. 
>>> The target lun is a sparse file, and I would like to be able to trim that 
>>> lun to reclaim free space. Think thin volume on a file backend. 
>>>
>>> Now iscsiadm -m session shows me (non-flash), what I suppose is the 
>>> reason, why I get an operation not permitted error when trying to so so. 
>>>
>>> The manpage talks about a flash node, but it is nowhere explained, what 
>>> that is and wether this is related to flash storage at all. So maybe there 
>>> is some documentation about the terms used?
>>>
>>> But primarily I would like to know, wether the information about the 
>>> trimability is a matter of the target advertising it or wether this has to 
>>> be defined during creation of the lun on the client side (-o new).
>>>
>>> Thanks
>>>
>>> Hermann
>>>
>>>
>>> -- 
>> You received this message because you are subscribed to the Google Groups 
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to open-iscsi+...@googlegroups.com.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.com 
>> <https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.com?utm_medium=email&utm_source=footer>
>> .
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d54dddca-dd0a-40a1-a698-a3107445beb5n%40googlegroups.com.

------=_Part_253_1197968317.1622097191345
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br>Hello Don,<br><br>thanks very much for further elaborating on this. I c=
ompletely forgot to mention, the taget side is lio / targetcli. Sorry for t=
his.<br><br>Indeed I've got sidetracked by the non-flash notion of iscsiadm=
. But this refers to something else - probably to those mysterious flashnod=
es mentioned in the man page. <br><br>The target lun is a sparse file on a =
xfs filesystem (ontop of a md0 raid, but with trim enabled: raid456.devices=
_handle_discard_safely=3DY)<br><br>The filesystem on the lun itself is f2fs=
. That does report discard capabilities already during mkfs time. At least,=
 if -t=3D1 is specified. <br><br>Now I did a quick test with deleting half =
of the mounted lun, and indeed, the real size of beforementioned sparse fil=
e shrunk. Took a while, but finally I can confirm, setting emulate_tpu=3D1 =
on the target side does do the trick. If the backend supports it, of course=
. <br><br>I would suspect, it would work the same way for block based backs=
tores (thin provisioned lvm, sparse zvols), but currently I have no means t=
o verify this. <br><br>Just for future reference, as I have had troubles co=
rrectly interviewing google about this. <br><br><div class=3D"gmail_quote">=
<div dir=3D"auto" class=3D"gmail_attr">don.e.w...@gmail.com schrieb am Mitt=
woch, 26. Mai 2021 um 19:07:20 UTC+2:<br/></div><blockquote class=3D"gmail_=
quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 2=
04); padding-left: 1ex;"><div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0It is also=
 the OS/filesystem that must support the TRIM or UNMAP command.=C2=A0 I.e. =
in EXT4 you have to set the option &#39;discard&#39; when mounting a volume=
 to support TRIM/UNMAP feature. Using=C2=A0something like &#39;fsttrim&#39;=
=C2=A0</div><div><br></div><div>=C2=A0If your backend storage is RAIDed the=
n typically any SSDs are not presented as SSD/FLASH drives to the host. Phy=
sical drives are virtualized by the RAID controller and LUNs are presented =
to the host.=C2=A0=C2=A0</div><div><br></div><div>=C2=A0 Once the TRIM/UNMA=
P command is sent=C2=A0 it&#39;s up to the backend storage device to handle=
 that properly.=C2=A0</div><div><br></div><div>=C2=A0Open-iSCSI itself is t=
he transport to the target from the OS.=C2=A0 It does not initiate TRIP/UNM=
AP or any other SCSI commands on its own.=C2=A0 It will pass along those SC=
SI commands the OS sends and send back all results.=C2=A0</div><div><br></d=
iv><div>=C2=A0Regards,=C2=A0</div><div>Don=C2=A0</div><div><br></div><div><=
br></div><div>=C2=A0</div><div>=C2=A0</div></div><br><div class=3D"gmail_qu=
ote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, May 26, 2021 at 10:33 AM &#39;H. Giebels&#39; via open-iscsi &lt;<=
a href data-email-masked rel=3D"nofollow">open-...@googlegroups.com</a>&gt;=
 wrote:<br></div></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">I think I&#39;ve got it. It is the emulate_tpu par=
ameter on the target side. Needs some more confirmation, though<br><br><div=
 class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">H. Giebels sc=
hrieb am Mittwoch, 26. Mai 2021 um 15:26:39 UTC+2:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><br>Hello,<br><br>not exactly sure, weth=
er this is an issue of targetcli or open iscsi. The target lun is a sparse =
file, and I would like to be able to trim that lun to reclaim free space. T=
hink thin volume on a file backend. <br><br>Now iscsiadm -m session shows m=
e (non-flash), what I suppose is the reason, why I get an operation not per=
mitted error when trying to so so. <br><br>The manpage talks about a flash =
node, but it is nowhere explained, what that is and wether this is related =
to flash storage at all. So maybe there is some documentation about the ter=
ms used?<br><br>But primarily I would like to know, wether the information =
about the trimability is a matter of the target advertising it or wether th=
is has to be defined during creation of the lun on the client side (-o new)=
.<br><br>Thanks<br><br>Hermann<br><br><br></blockquote></div>

<p></p></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href data-email-masked rel=3D"nofollow">open-iscsi+...@googlegro=
ups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank" rel=3D"no=
follow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Dde&amp;q=3D=
https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd=
36a363n%2540googlegroups.com?utm_medium%3Demail%26utm_source%3Dfooter&amp;s=
ource=3Dgmail&amp;ust=3D1622183476534000&amp;usg=3DAFQjCNG_wXYDNDLz66OREBWv=
e6tNjREJPQ">https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c=
-80a4-d611fd36a363n%40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/d54dddca-dd0a-40a1-a698-a3107445beb5n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/d54dddca-dd0a-40a1-a698-a3107445beb5n%40googlegroups.com</a>.=
<br />

------=_Part_253_1197968317.1622097191345--

------=_Part_252_1302071430.1622097191345--
