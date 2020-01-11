Return-Path: <open-iscsi+bncBC24JGEJRMKRBSOC5DYAKGQEVLNLCNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id C75DD138305
	for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 20:26:02 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 24sf3473254qka.16
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 11:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GT+o7k7YUIusYrv9LPaRp7/mNRFIBu2nyJOUOUi1MAU=;
        b=FGjVpNuCaAXcH0son5X3WqKvGShoPn+Ttgz2tNp4/b86ojT9Yh2BivkOvLQY0/tACO
         gk9jSRN52+aoTj2cKcaUzPvro3uO3EqfY83oONbm70iOFTFJJZQuK8oTx84Q/UVXJYPi
         6GaYNEQzDB+zSlmQiyp1nFqGfYMfvPhW0g0G9ARu5p0CvHkTeVDNiRg5g1c8F3mmc99B
         m/CmyjWv3HdcKy25Ez9CyE+WfZMLb0s1qW71Vnc5h0FD7b2evJt1gp2b3Y1NFt12vwHk
         6h52KaMCWcPraTAkKnZyQcjr3CmOclPrryNMAwOFRrQ4NGcJb2xrrcCfNP6iGLhcryGQ
         LV2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GT+o7k7YUIusYrv9LPaRp7/mNRFIBu2nyJOUOUi1MAU=;
        b=arQ+R8iyo5KjcjqeJbwcIVi+BjuDoNc3phGmA71guF2GwBljlQ27dRlcDPLHXCYkRK
         UKh08BUf62RWlhWlui6uCnemv4fTvRVOUNogq5FoA92GZN2HpRQICoHeS4R6OREnQjtG
         18hejYhyob4NtOu9BGtHqt7+lQxoWQ1gFCpVVEOhaQIs4MYoj4Sex/y2lfMpOmiynsLH
         gdjaxT9m7eTFZbq0BfNJ8+sDpgd4OTADuw6NbmGVubjytNlLq0i0tqu0FHwk+KzkukYt
         /bZg1vE+cyBiKHLoO+H1yJDOGRrF/81fbhVh+ES4PGVx9rUuvtug/4FhsDqmw0OArIiu
         Y/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GT+o7k7YUIusYrv9LPaRp7/mNRFIBu2nyJOUOUi1MAU=;
        b=lRUzL5r2BSZH6OBzHOJ4a+oso7h02n8J+bCLnR5RfjzAPz8p2A9rugxN6oyY2Lb56G
         0jdKvEL3pVVLa8GDfMFagR6hMZAvJJQUAcyK7QLrQMsFcFk0Fjcz4IwRZjb6u6c/HNne
         FmV1uzfcRUKjpvtfrqQqhWEJ+mdmXXVWCioh9PiUPSnxYqbyytSxixqB7w2BBpTp3U3p
         4YH2eSLKXd3Eig2BZ5GLOxjm/OdILTYkatv1uqKSnohzrobl0Yhg1eL5U0v3YxcE0bF6
         w8KwJjFB81hcCTwKyGGj1rAsqyBH1eYJ3dvhh3Xrk+hP87RHdNYz7bMJOJCoRiBpPIzf
         IfXA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUu0dxUhX0NV6p5MV35yiwZ6HV9nkpqrqnymsfifPyVTa+HHCxM
	3bZRl/iam0kUF22sfiD6P10=
X-Google-Smtp-Source: APXvYqxSrlIgepPmatxRRSuOczluEdfZYWu6nkzmyWhJcWehVOsF+fyGX2jKqugvTqHVqaVIXMjPow==
X-Received: by 2002:ac8:5241:: with SMTP id y1mr3976378qtn.373.1578770761723;
        Sat, 11 Jan 2020 11:26:01 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:6211:: with SMTP id w17ls648342qkb.9.gmail; Sat, 11 Jan
 2020 11:26:01 -0800 (PST)
X-Received: by 2002:a37:a80a:: with SMTP id r10mr8680116qke.240.1578770761269;
        Sat, 11 Jan 2020 11:26:01 -0800 (PST)
Date: Sat, 11 Jan 2020 11:26:00 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <30876a44-cc2e-44ef-a052-a5b91dd31147@googlegroups.com>
In-Reply-To: <9745153a-66eb-4abb-8628-23e2ba1b28fd@googlegroups.com>
References: <000c01c55fd9$36d18590$03031eac@ivivity.com>
 <1116889886.16262.47.camel@beastie>
 <1306f306-ef08-4e79-b98a-6d1e6ee42f25@googlegroups.com>
 <9745153a-66eb-4abb-8628-23e2ba1b28fd@googlegroups.com>
Subject: Re: how it works
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1281_660880571.1578770760644"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_1281_660880571.1578770760644
Content-Type: multipart/alternative; 
	boundary="----=_Part_1282_581620099.1578770760645"

------=_Part_1282_581620099.1578770760645
Content-Type: text/plain; charset="UTF-8"

Hi ,

Thanks for your patience  regarding my questions. Because after I had dug 
(digged) very older posts, I realized 
many of the older posts already had answers for many of my earlier 
questions :). After your couple of answers and going 
through old posts, I have a better understanding of *user land* and *kernel 
land*.

Now one more point.

*Kernel land: *
While we are at kernel land, I have a confusion on that.
AFAIK in linux kernel, the linux *block layer* is a glue that, on the one 
hand, allows applications to access 
diverse storage devices 
in a uniform way, and on the other hand,
provides storage devices and drivers with a single point of entry from all 
applications.
I mean this Linux OS (host) block layer is the most
critical part of the I/O hierarchy, as it orchestrates the I/O
requests from different applications to the underlying storage.

*Question:*
So in context of *Open-iSCSI*, where does the user-land interacts the block 
layer in the kernel land? I 
mean, when it comes to kernel land, why we are considering only 
*scsi_transport_iscsi.c* and *iscsi_tcp.c* codes? Shouldn't
the block request go through block layer?

As always, thanks in advance :)


On Friday, January 10, 2020 at 10:55:34 PM UTC+1, The Lee-Man wrote:
>
> On Friday, January 10, 2020 at 8:44:05 AM UTC-8, Bobby wrote:
>>
>>
>> Hi,
>>
>>
>> -  Question 1: The kernel still contains 2 files?
>> -  Question  2:  Do we still have those diagrams available online?
>>
>>
>> The kernel has many files, but those two files are still present for 
> open-iscsi. If you look in drivers/scsi/*iscsi*.[ch], each of those files 
> are either initiator or target files.
>
> I don't know what diagrams were around in the past, but we no longer have 
> any on the web page, which is hosted by github now. A simple google of 
> "open-iscsi architecture diagrams" yields quite a few pictures, though, 
> such as this one: 
> https://www.researchgate.net/figure/General-iSCSI-architecture_fig1_221396996
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/30876a44-cc2e-44ef-a052-a5b91dd31147%40googlegroups.com.

------=_Part_1282_581620099.1578770760645
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi ,</div><div><br></div><div><div>Thanks for your pa=
tience=C2=A0 regarding my questions. Because after I had dug (digged) very =
older posts, I realized=C2=A0</div><div>many of the older posts already had=
 answers for many of my earlier questions :). After your couple of answers =
and going=C2=A0</div><div>through old posts, I have a better understanding =
of <b>user land</b> and <b>kernel land</b>.</div><div><br></div><div>Now on=
e more point.<br><br></div><div><b><u>Kernel land:=C2=A0</u></b></div><div>=
While we are at kernel land, I have a confusion on that.</div><div>AFAIK in=
 linux kernel, the linux <b>block layer</b> is a glue that, on the one hand=
, allows applications to access=C2=A0</div><div>diverse storage devices=C2=
=A0</div><div>in a uniform way, and on the other hand,</div><div>provides s=
torage devices and drivers with a single point of entry from all applicatio=
ns.</div><div>I mean this Linux OS (host) block layer is the most</div><div=
>critical part of the I/O hierarchy, as it orchestrates the I/O</div><div>r=
equests from different applications to the underlying storage.</div><div><b=
r></div><div><b><u>Question:</u></b></div><div>So in context of <b>Open-iSC=
SI</b>, where does the user-land interacts the block layer in the kernel la=
nd? I=C2=A0</div><div>mean, when it comes to kernel land, why we are consid=
ering only <b><i>scsi_transport_iscsi.c</i></b> and <b><i>iscsi_tcp.c</i></=
b> codes? Shouldn&#39;t</div><div>the block request go through block layer?=
</div></div><div><br></div><div>As always, thanks in advance :)</div><br><b=
r>On Friday, January 10, 2020 at 10:55:34 PM UTC+1, The Lee-Man wrote:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-l=
eft: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">On Friday, January=
 10, 2020 at 8:44:05 AM UTC-8, Bobby wrote:<blockquote class=3D"gmail_quote=
" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><br>Hi,<div><br><br>-=C2=A0 Question 1: The kernel=
 still contains 2 files?<br>-=C2=A0 Question=C2=A0 2:=C2=A0 Do we still hav=
e those diagrams available online?<br><br><br></div></div></blockquote><div=
>The kernel has many files, but those two files are still present for open-=
iscsi. If you look in drivers/scsi/*iscsi*.[ch], each of those files are ei=
ther initiator or target files.</div><div><br></div><div>I don&#39;t know w=
hat diagrams were around in the past, but we no longer have any on the web =
page, which is hosted by github now. A simple google of &quot;open-iscsi ar=
chitecture diagrams&quot; yields quite a few pictures, though, such as this=
 one: <a href=3D"https://www.researchgate.net/figure/General-iSCSI-architec=
ture_fig1_221396996" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.researchgate=
.net%2Ffigure%2FGeneral-iSCSI-architecture_fig1_221396996\x26sa\x3dD\x26snt=
z\x3d1\x26usg\x3dAFQjCNFBPxmSZ8DG4hH_P8TwquJWNhK5Mg&#39;;return true;" oncl=
ick=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.r=
esearchgate.net%2Ffigure%2FGeneral-iSCSI-architecture_fig1_221396996\x26sa\=
x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFBPxmSZ8DG4hH_P8TwquJWNhK5Mg&#39;;return =
true;">https://www.researchgate.net/<wbr>figure/General-iSCSI-<wbr>architec=
ture_fig1_221396996</a><br></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/30876a44-cc2e-44ef-a052-a5b91dd31147%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/30876a44-cc2e-44ef-a052-a5b91dd31147%40googlegroups.com</a>.<b=
r />

------=_Part_1282_581620099.1578770760645--

------=_Part_1281_660880571.1578770760644--
