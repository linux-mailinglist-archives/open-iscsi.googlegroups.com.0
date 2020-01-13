Return-Path: <open-iscsi+bncBC24JGEJRMKRB6746HYAKGQENYRSDCA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 579461393AC
	for <lists+open-iscsi@lfdr.de>; Mon, 13 Jan 2020 15:28:12 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id 12sf5968751qkf.20
        for <lists+open-iscsi@lfdr.de>; Mon, 13 Jan 2020 06:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gq6oxwdpDdDIsYFquR4hgt0/81wxkXgnCzp3bTyJ0BU=;
        b=KjGs4mhCKAWfdtQt15YmQ8nFmpzWJnSAwaxgM7ZM20tYVviYycowstzk0FN8vEK+gg
         Df9Hv/99MjZnXpZnVG3z1ZuPpFHJwC6sAHgSQmoR3bB4imJOS1orH+KhUOC+seTr8OwN
         jxKPhqEq9dLJZhe3clv9HgGbV89g0YcQhAnqM8P/lEdZH5/YOznp4xp0/kMMuYggmWGk
         eGL4etbi0OB6gMr9RXZHLUklkCEAj4vNcn+Z+DUy9sq1GfWVbEQ7Mc12c+yqCd4R8MZ/
         N7aZ8GGAGarL0TV7EUO83ArjWf0/kgLaJYTqz3nLL7f75ip0bF2w/5ZYtZpNDnH8725i
         xUrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gq6oxwdpDdDIsYFquR4hgt0/81wxkXgnCzp3bTyJ0BU=;
        b=i9E7hgQSRU6feHjmB6zdYAJ3lBRZ27QXE3/fVQaDJhTY+s+aM2yVWQDXNSwQd+zwkN
         JbbUiwNrkrxT36aHoE/jtrzjgVuzDpIkFRo1JkAcrbwe8U5Nh7SEAB781SqE8IsFbisU
         +pEojTackS/v54MOZfRhjmS2hGSXuMvGGJSVz/SrmgCBVAi2tcOPoPqGw9+Gxbv7qEKV
         93MCtFkoq84V9zX5c8vg3omIuG6KOGLqR9CecDKcGZvLYRQTZn0YTZIWOmlwPMnOO9Rq
         RscX0vjrhJs3eNhiyDfBhO3w13esgvTdYOh+Uw2RIPG4SMcx/V7+aErlnLhX4Tgk94xB
         BChg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gq6oxwdpDdDIsYFquR4hgt0/81wxkXgnCzp3bTyJ0BU=;
        b=AqSF5F+vKtTy/RJdrDM/lpY4KhC9j51K8N1We8uCPpfd9NFyLTCZleMwlqgMXBRXER
         DPGSWfg+AIZjOtR6Dh2Yl25Z2eut6JDVba5Joue/6dMfhEt/khzYzqdAdlfNH0zvDfqx
         Q9oDWRaTP11JKtRrZXXz+20qyprCY9hYWRRH/jHUDzxoAYAtrtgh2G9jy8h/mccg14kd
         JX+NWtNOXavcSwxgkqliVX+n8wUqoszi3VFr502arZKCXsndVCDR5FVcEncb/ze5AyYI
         EvdSWDmONfI9A2RbxOO/I9MBUP8HOmbv8swNPZRp3xMgZashN1nROafI2kx3WMrR8q9P
         ZbRQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVAK+/CJeswGNgJIEGUcjzyc08L2LxYopyxCILvEqsK6kAvkIc2
	SCOE5N8l1jduCzCoriLA5Ps=
X-Google-Smtp-Source: APXvYqxW++HC/0m5GBUr5T4Zo815p8ZNHqWnSd138H/pbwf1gWRHIjsHM5T1AzrSZWNrhw8VwWASUA==
X-Received: by 2002:ac8:6c5:: with SMTP id j5mr10727152qth.284.1578925691290;
        Mon, 13 Jan 2020 06:28:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:c3d0:: with SMTP id p16ls2294364qvi.0.gmail; Mon, 13 Jan
 2020 06:28:11 -0800 (PST)
X-Received: by 2002:a0c:eb42:: with SMTP id c2mr11816705qvq.241.1578925690838;
        Mon, 13 Jan 2020 06:28:10 -0800 (PST)
Date: Mon, 13 Jan 2020 06:28:10 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <df9596a8-aa02-4679-bdfa-8027d497815e@googlegroups.com>
In-Reply-To: <CAK3e-EZqkCqnoZi5fbeXGZeZ8k57eLA6NGgw_BxQGiz32M1_5g@mail.gmail.com>
References: <587116d0-ebce-45b9-b5cf-e6fbc3437b41@googlegroups.com>
 <CAK3e-EagWT_YBz=akXUsM=qMJX_T4=SowxOWCVjWQ2W_17LyAw@mail.gmail.com> <566e8911-552e-4dbf-afd5-89c156929bf1@googlegroups.com>
 <CAK3e-EZqkCqnoZi5fbeXGZeZ8k57eLA6NGgw_BxQGiz32M1_5g@mail.gmail.com>
Subject: Re: Two types of initiator stacks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1522_2114377030.1578925690195"
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

------=_Part_1522_2114377030.1578925690195
Content-Type: multipart/alternative; 
	boundary="----=_Part_1523_90150819.1578925690196"

------=_Part_1523_90150819.1578925690196
Content-Type: text/plain; charset="UTF-8"

Hi Donald,

Thanks a lot ! That was a very nice explanation...Now the concept is clear 
to me :) !

On Friday, January 10, 2020 at 7:40:34 PM UTC+1, Donald Williams wrote:
>
> Hello, 
>  You are very welcome.  
>
> Also, iSCSI offload cards like the Broadcom (Now owned by Qlogic) are 
> typically called "dependent hardware initiators'.  Since it depends on 
> connection to the OS network stack to make it fully functional.  Otherwise, 
> it behaves just like a standard NIC. 
>
> Cards that completely offload the network and iSCSI functions are known as 
> "Independent hardware initiators'.   Since they don't require that OS 
> network connection.  They appear solely as a SCSI adapter to the OS.  All 
> the network configuration is done on the card.  Qlogic used to make the 
> best examples of this.  The Qlogic 4xxx series iSCSI HBAs.   Now you see 
> this in cards that support DCB, they are called "Converged Network 
> Adapters"  CNAs.   Since very few Software Initiators support DCB naively 
> the card has to handle everything.  
>
> Regards, 
> Don 
>
>
>
> On Fri, Jan 10, 2020 at 11:18 AM Bobby <italien...@gmail.com <javascript:>> 
> wrote:
>
>> ah OK thanks !
>>
>>
>> On Thursday, January 9, 2020 at 7:35:07 PM UTC+1, Donald Williams wrote:
>>>
>>> Hello, 
>>>  
>>>  It is referring to iSCSI HBA cards like Broadcom BCM58xx/57xxx or just 
>>> using a standard NIC and the Software iSCSI adapter open-iSCSI provides. 
>>>
>>> Regards, 
>>> Don 
>>>
>>>
>>>
>>> On Thu, Jan 9, 2020 at 11:57 AM Bobby <italien...@gmail.com> wrote:
>>>
>>>> Under section "How to setup iSCSI interfaces (iface) for binding" of 
>>>> README, there is this paragraph:
>>>>
>>>> " To manage both types of initiator stacks, iscsiadm uses the interface (iface)
>>>> structure. For each HBA port or for software iscsi for each network
>>>> device (ethX) or NIC, that you wish to bind sessions to you must create
>>>> a iface config /etc/iscsi/ifaces. "
>>>>
>>>>
>>>>
>>>>  Here I am confused. Which both types of initiator stacks we mean here?
>>>>
>>>>
>>>>
>>>> Thanks !
>>>>
>>>> -- 
>>>> You received this message because you are subscribed to the Google 
>>>> Groups "open-iscsi" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send 
>>>> an email to open-...@googlegroups.com.
>>>> To view this discussion on the web visit 
>>>> https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com 
>>>> <https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com?utm_medium=email&utm_source=footer>
>>>> .
>>>>
>>> -- 
>> You received this message because you are subscribed to the Google Groups 
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to open-...@googlegroups.com <javascript:>.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com 
>> <https://groups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com?utm_medium=email&utm_source=footer>
>> .
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/df9596a8-aa02-4679-bdfa-8027d497815e%40googlegroups.com.

------=_Part_1523_90150819.1578925690196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Donald,<div><br></div><div>Thanks a lot ! That was a ve=
ry nice explanation...Now the concept is clear to me :) !<br><br>On Friday,=
 January 10, 2020 at 7:40:34 PM UTC+1, Donald Williams wrote:<blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px =
#ccc solid;padding-left: 1ex;"><div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0You =
are very welcome.=C2=A0=C2=A0</div><div><br></div><div>Also, iSCSI offload =
cards like the Broadcom (Now owned by Qlogic) are typically called &quot;de=
pendent hardware initiators&#39;.=C2=A0 Since it depends on connection to t=
he OS network stack to make it fully functional.=C2=A0 Otherwise, it behave=
s just like a standard NIC.=C2=A0</div><div><br></div><div>Cards that compl=
etely offload the network and iSCSI functions are known as &quot;Independen=
t hardware initiators&#39;.=C2=A0 =C2=A0Since they don&#39;t require that O=
S network connection.=C2=A0 They appear solely as a SCSI adapter to the OS.=
=C2=A0 All the network configuration is done on the card.=C2=A0 Qlogic used=
 to make the best examples of this.=C2=A0 The Qlogic 4xxx series iSCSI HBAs=
.=C2=A0 =C2=A0Now you see this in cards that support DCB, they are called &=
quot;Converged Network Adapters&quot;=C2=A0 CNAs.=C2=A0 =C2=A0Since very fe=
w Software Initiators support=C2=A0DCB naively the card has to handle every=
thing.=C2=A0=C2=A0</div><div><br></div><div>Regards,=C2=A0</div><div>Don=C2=
=A0</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">On Fri, Jan 10, 2020 at 11:18 AM Bobby &lt;<a href=3D"jav=
ascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"PhOrDaSLDwAJ" rel=3D"n=
ofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onc=
lick=3D"this.href=3D&#39;javascript:&#39;;return true;">italien...@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">ah OK thanks !<div><br></div><div><br>On Thursday, Januar=
y 9, 2020 at 7:35:07 PM UTC+1, Donald Williams wrote:<blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><=
div>=C2=A0It is referring to iSCSI HBA cards like Broadcom BCM58xx/57xxx or=
 just using a standard NIC and the Software iSCSI adapter open-iSCSI provid=
es.=C2=A0</div><div><br></div><div>Regards,=C2=A0</div><div>Don=C2=A0</div>=
<div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Thu, Jan 9, 2020 at 11:57 AM Bobby &lt;<a rel=3D"nofollow">ital=
ien...@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Under section &quot;<span style=3D"co=
lor:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono=
&quot;,Menlo,monospace;font-size:12px;white-space:pre-wrap">How to setup iS=
CSI interfaces (iface) for binding&quot; of README, there is this paragraph=
:</span></div><div><br></div><div><pre style=3D"font-family:SFMono-Regular,=
Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;color:r=
gb(36,41,46);white-space:pre-wrap">&quot; To manage both types of initiator=
 stacks, iscsiadm uses the interface (iface)
structure. For each HBA port or for software iscsi for each network
device (ethX) or NIC, that you wish to bind sessions to you must create
a iface config /etc/iscsi/ifaces. &quot;</pre><pre style=3D"font-family:SFM=
ono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:=
12px;color:rgb(36,41,46);white-space:pre-wrap"><br></pre><pre style=3D"font=
-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace=
;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><br></pre><pre st=
yle=3D"font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menl=
o,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><span =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:13px;white-space:normal">=C2=A0Here I am confused. Which both types of i=
nitiator stacks we mean here?</span><br></pre><pre style=3D"font-family:SFM=
ono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:=
12px;color:rgb(36,41,46);white-space:pre-wrap"><span style=3D"color:rgb(34,=
34,34);font-family:Arial,Helvetica,sans-serif;font-size:13px;white-space:no=
rmal"><br></span></pre><pre style=3D"font-family:SFMono-Regular,Consolas,&q=
uot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;color:rgb(36,41,46=
);white-space:pre-wrap"><span style=3D"color:rgb(34,34,34);font-family:Aria=
l,Helvetica,sans-serif;font-size:13px;white-space:normal"><br></span></pre>=
<pre style=3D"font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quo=
t;,Menlo,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"=
><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:13px;white-space:normal">Thanks !</span></pre></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a rel=3D"nofollow">open-...@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"nofollow" target=3D"_=
blank" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/op=
en-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com?utm_medium=
\x3demail\x26utm_source\x3dfooter&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5c=
f-e6fbc3437b41%40googlegroups.com?utm_medium\x3demail\x26utm_source\x3dfoot=
er&#39;;return true;">https://groups.google.com/d/<wbr>msgid/open-iscsi/587=
116d0-<wbr>ebce-45b9-b5cf-e6fbc3437b41%<wbr>40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
PhOrDaSLDwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">open-...@<wbr>googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank" rel=3D"nof=
ollow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/op=
en-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com?utm_medium=
\x3demail\x26utm_source\x3dfooter&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd=
5-89c156929bf1%40googlegroups.com?utm_medium\x3demail\x26utm_source\x3dfoot=
er&#39;;return true;">https://groups.google.com/d/<wbr>msgid/open-iscsi/566=
e8911-<wbr>552e-4dbf-afd5-89c156929bf1%<wbr>40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/df9596a8-aa02-4679-bdfa-8027d497815e%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/df9596a8-aa02-4679-bdfa-8027d497815e%40googlegroups.com</a>.<b=
r />

------=_Part_1523_90150819.1578925690196--

------=_Part_1522_2114377030.1578925690195--
