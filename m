Return-Path: <open-iscsi+bncBC24JGEJRMKRBUWH4LYAKGQEFRYPNTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id AB76F1372A5
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 17:18:27 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id 24sf1490589qka.16
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 08:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=a4VvVeMK+MG6in1kt76qb5atGSqvy8oYL5wkWZpfXxw=;
        b=V0w6LktLh7FSinvHRuotFx4+4IdAX/My9Bg8truhYSzqV7HkCRRhOWEnnlROw0RxQ7
         dMwNd+WOoV+EUGH19I7InCyGbPrALPXUOeGuajNnIF0ihZHaPnlNfaLO+XI4AN3EkXrg
         x3XEEi7xzqsYm0kjvG/nGM3Yp1bSgJjgdmPf538W9wXqjmijwdLwChI1x/rFwpQLvk0Y
         N5SDZS0xpMEzjnFOtobK0idyujIUx02fiojJ1KHniO3H/Fd9UUcKtB1nQkf0xwgoxK7R
         VV1VOKpJKP1VIgQZQvDF8pZ1n0qHa+/rHDTOQT4m3wpRMPGV3eDxffZZa0Zyh2zIf+Vz
         /hhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a4VvVeMK+MG6in1kt76qb5atGSqvy8oYL5wkWZpfXxw=;
        b=FFkupDRYmSMEd7E4WtfX6zv4NSWx/KfidvcI2DCaYYd0ItGl9Qc5iEXfG3caDgFkH7
         sS6uBb1sGYx2OWZlv9u7MgqrZ7Q45JAhlsggrKTTwL5ZcdxxeQOiermipEMWd7yCpdb/
         ulOXAXH9tnQwZ8J5uLxE7+Fh7L8JDPnx10ieuDIITtJJ7uUbh26E/FGumBKIt3agn00w
         nEXkOdLAhcoVtUJt2Nxm2Y5KZuGBwGgx7jnZn4OFnEN1bJoBzS/I8v+o3UUOj2EQV6Ag
         8a9V5p70MhdhnwhSqj9lt1AdlpkypdN2oZFW3q2eEF/qMvkm6jowPmYdRgr5Uo70F2iu
         jfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a4VvVeMK+MG6in1kt76qb5atGSqvy8oYL5wkWZpfXxw=;
        b=ET6N/2m8yekwPQ/XPvXchp0Vs/Ygx0xrwEUMgTiJ8h/XqGruG2iOSfJaqQrQthIq9V
         6PT/qQosB6dymkBqvCLVWa4D2x4M6GErEJgSYbuH9a2aNk/MjHAOlTo7XNyweliHU/De
         3LPpt8PB3WRx177RrP9WsBzT9ox3x9JnMliZf3G+4s1tnde6/6dlo8nTCuVFjZ1BbCti
         J6cy6JEmq9IOXd33kXEQ0IPZzAXCnfAXWpwWyhOL7p2NwlFMKBxr6xWqAV8BENKJyYOj
         LmZ2WmNInezfDApFMpgFo3wdWMbURBqdONPfUEm98916laYHELEnlKVeXEj5hacuFBNQ
         69yQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUMkptTCuSVnSY8rJdFjvxk2bIur+7gWfsz3mz1HIWVmadgAuod
	+fkGvLFH04fx0jrD+H+T/nE=
X-Google-Smtp-Source: APXvYqzMbv0w2BdviCQJAm8D2ec/CLt9Ondvq/FbB+mHzQeoZNImjY3e6amZWwLWvfLMUPgOd2R5LQ==
X-Received: by 2002:a05:6214:1348:: with SMTP id b8mr3423702qvw.137.1578673106724;
        Fri, 10 Jan 2020 08:18:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:ac11:: with SMTP id e17ls2282702qkm.7.gmail; Fri, 10 Jan
 2020 08:18:26 -0800 (PST)
X-Received: by 2002:ae9:ec01:: with SMTP id h1mr4029614qkg.33.1578673106224;
        Fri, 10 Jan 2020 08:18:26 -0800 (PST)
Date: Fri, 10 Jan 2020 08:18:25 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <566e8911-552e-4dbf-afd5-89c156929bf1@googlegroups.com>
In-Reply-To: <CAK3e-EagWT_YBz=akXUsM=qMJX_T4=SowxOWCVjWQ2W_17LyAw@mail.gmail.com>
References: <587116d0-ebce-45b9-b5cf-e6fbc3437b41@googlegroups.com>
 <CAK3e-EagWT_YBz=akXUsM=qMJX_T4=SowxOWCVjWQ2W_17LyAw@mail.gmail.com>
Subject: Re: Two types of initiator stacks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_856_905659948.1578673105648"
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

------=_Part_856_905659948.1578673105648
Content-Type: multipart/alternative; 
	boundary="----=_Part_857_1833346882.1578673105648"

------=_Part_857_1833346882.1578673105648
Content-Type: text/plain; charset="UTF-8"

ah OK thanks !


On Thursday, January 9, 2020 at 7:35:07 PM UTC+1, Donald Williams wrote:
>
> Hello, 
>  
>  It is referring to iSCSI HBA cards like Broadcom BCM58xx/57xxx or just 
> using a standard NIC and the Software iSCSI adapter open-iSCSI provides. 
>
> Regards, 
> Don 
>
>
>
> On Thu, Jan 9, 2020 at 11:57 AM Bobby <italien...@gmail.com <javascript:>> 
> wrote:
>
>> Under section "How to setup iSCSI interfaces (iface) for binding" of 
>> README, there is this paragraph:
>>
>> " To manage both types of initiator stacks, iscsiadm uses the interface (iface)
>> structure. For each HBA port or for software iscsi for each network
>> device (ethX) or NIC, that you wish to bind sessions to you must create
>> a iface config /etc/iscsi/ifaces. "
>>
>>
>>
>>  Here I am confused. Which both types of initiator stacks we mean here?
>>
>>
>>
>> Thanks !
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups 
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to open-...@googlegroups.com <javascript:>.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com 
>> <https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com?utm_medium=email&utm_source=footer>
>> .
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com.

------=_Part_857_1833346882.1578673105648
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ah OK thanks !<div><br></div><div><br>On Thursday, January=
 9, 2020 at 7:35:07 PM UTC+1, Donald Williams wrote:<blockquote class=3D"gm=
ail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc soli=
d;padding-left: 1ex;"><div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><div>=
=C2=A0It is referring to iSCSI HBA cards like Broadcom BCM58xx/57xxx or jus=
t using a standard NIC and the Software iSCSI adapter open-iSCSI provides.=
=C2=A0</div><div><br></div><div>Regards,=C2=A0</div><div>Don=C2=A0</div><di=
v><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr">On Thu, Jan 9, 2020 at 11:57 AM Bobby &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"LKHYfcM8DwAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">italien...@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Under section &quot;<span style=3D"color:rgb(36,41,46);font-famil=
y:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-=
size:12px;white-space:pre-wrap">How to setup iSCSI interfaces (iface) for b=
inding&quot; of README, there is this paragraph:</span></div><div><br></div=
><div><pre style=3D"font-family:SFMono-Regular,Consolas,&quot;Liberation Mo=
no&quot;,Menlo,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre=
-wrap">&quot; To manage both types of initiator stacks, iscsiadm uses the i=
nterface (iface)
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
mail to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
LKHYfcM8DwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">open-...@<wbr>googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank" rel=3D"nof=
ollow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/op=
en-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com?utm_medium=
\x3demail\x26utm_source\x3dfooter&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5c=
f-e6fbc3437b41%40googlegroups.com?utm_medium\x3demail\x26utm_source\x3dfoot=
er&#39;;return true;">https://groups.google.com/d/<wbr>msgid/open-iscsi/587=
116d0-<wbr>ebce-45b9-b5cf-e6fbc3437b41%<wbr>40googlegroups.com</a>.<br>
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
om/d/msgid/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/566e8911-552e-4dbf-afd5-89c156929bf1%40googlegroups.com</a>.<b=
r />

------=_Part_857_1833346882.1578673105648--

------=_Part_856_905659948.1578673105648--
