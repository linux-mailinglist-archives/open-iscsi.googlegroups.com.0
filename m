Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBWHE3XYAKGQEAAKXTCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF45B136039
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jan 2020 19:35:05 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id o185sf1072589vsc.5
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Jan 2020 10:35:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578594904; cv=pass;
        d=google.com; s=arc-20160816;
        b=jG+rd8QRPo8WgSPIbzsUVu5O5NnYXHT2y0a9hFwxvXWBGhAh8HWu5bU/G0kdEgxixw
         uFKF+Kdzb0VogReQMgi5FPaNdqqHLnkubxoeuAT40P/Shc/55Xk8pr3ijMuYCU3L6Ttv
         v15L7oXi3z2P8/eetcA7aMwCofaKA5eW7R2jtc2LbkP/dtf50rkXNtFitsCkhmP4p2LU
         s5BiazJ2Nd37eBR7pnxR2LUfQ0xrOdhyMX2KoN8gxC03CfUSEVom77C6IGczgyNr8kSX
         7omzQCp6OAmuPiR37bugtOd5XMOuFk/+baZgzb32qmM59PjI1yorHQksjncrIL9hWmh3
         1mSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wG9f2bwj6vISE+xYiK8YY07qhpi0hKzhpPC4eNLILGY=;
        b=JDNX7RKYgsa/FBFR4Y0tv06o/wwCbjFKrgRefRCMaqUy0XUtqEeP3OGPtzfN0p9J3b
         MBBXjhI/hxjJybJ/T022YdEjTZpF1nAiTK68iQVRwi5xfhNGkVISWhUqOrU13vUoJfXM
         ZQWi72yd6FyRP1rl972acqoEYNUOtVT7q91XMposPold50pP+wHXl9rzXl4yjsMm99/K
         2XkpGdoSEo/NdtDiA64cOUrv3MgJcGEDjRExdskqeZcfsFh0r7yawZMpFWSX2v2X++5h
         ZpxnyV/CTYm05uZWaNoS9+z6UOsC0hMhcaYw/Qz+Zi7BhoCwibhRQ2UCxp5qt9YpmbdL
         XSvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lcpTFXQQ;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wG9f2bwj6vISE+xYiK8YY07qhpi0hKzhpPC4eNLILGY=;
        b=D+/JZS0hSx0Z7EuM4i9zjmtYFPP251/JH0spR7NFkzoN/Pbk97kqsQ+WKaz/0sezwL
         BakpyOvwiwcEtctZUjsNU1mAt1q664hw6yZerZIa1ZU2KKdA4mEKvNYitGKxuL9Qnuhm
         nUmrg2QzWTBekMuKVBd2oXyuwvKIBbdmPP2vGLAhmOe4Tr3jL7aii0KwGyYuyp94ZYiE
         R5R7cu5b+312xUB8YqHPRaks8FJC+oEmhZuX5/IOm4WJ8BouxSbuFMHJ5OQ1JsH4lyNM
         CagtHIQzpSxFh25S9779G5yL6LoiVGkSJmPP4O73/ArESmGdIVM+FrDQwQo9ZnrXZvj9
         qPDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wG9f2bwj6vISE+xYiK8YY07qhpi0hKzhpPC4eNLILGY=;
        b=MPVOKLTSpI8HeBTzDRKVwThT/L/7XhCBHkeK526MG/T9mivQGmMCAf6JqTvvw5vrsK
         PT+VFWfhfKSg9mFyNOCCAxA5Ebf23aGOHkU/VqxpzVhWhJSyJXxUOkojSPFUxgu6yULD
         pzMU6H2j/4VG0mhRk5yVw70FwObl7/i9aRRqPv0+dGKwAUcJvUuSd8MmPE0D1YTycVku
         YjomDd8dkj0Ud1yWodSdPu4UbyP+Ba1Z9Q9J3CsIjeVRBN8uoOI5U1x/OvUBQG/IU/tv
         bMnwvhrpLmh12x3OaJHIDDzo3NSSGgX/2drcdfBwpvuSez0Coh9Tafxhsa6zI1AV63rC
         ktEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wG9f2bwj6vISE+xYiK8YY07qhpi0hKzhpPC4eNLILGY=;
        b=kl5+XOO7BZ2RCMESYi1jynf3i9LnB8weYGa1dHgm56x2oLTjc6fYwTCD182qTBfIv9
         lIG2wlAg4Cygd6h0B9ixPJ80GZRzlbQPLr++jhvN1cNyg+ta51oX/ELo6vKgXBFzcerW
         kvXRBEyj854atYJxRTOhldX9w9osioa+LJCSPy5KOpFz1DUr+0Sog04JiUO8kI+JdOQP
         hoNd48U77G2mP18TDZZumpFj5UDYL5iX7SaENhVPYqVduBItAVXt/KzYK1mxcsXs6g/2
         gdK/rMZg8KAWau81+9mo5/BrXA3mlwrEWdhe1GAvb6o2qscZqzI0TxtMsQj6KhzjRq4T
         KQSQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUf7Gnf3lE2yx6bo8vvWAutwzCcC35WgVdLuNI0xZYeDRLiq0mT
	vOi9WWBbchKPF6/KRLXrek8=
X-Google-Smtp-Source: APXvYqyNnjIwFjVlAH/wu1TIgTdhQZbb77DO8Q79gjm5OEclolGEXcgT9NGycCVzdXXFpOiHDigoeQ==
X-Received: by 2002:ab0:6001:: with SMTP id j1mr7917472ual.56.1578594904601;
        Thu, 09 Jan 2020 10:35:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:cb82:: with SMTP id h2ls260543vsl.3.gmail; Thu, 09 Jan
 2020 10:35:04 -0800 (PST)
X-Received: by 2002:a67:b303:: with SMTP id a3mr7157435vsm.141.1578594904114;
        Thu, 09 Jan 2020 10:35:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578594904; cv=none;
        d=google.com; s=arc-20160816;
        b=XOMatAp5P2fL0aoc9NueVVrEp9f+g6oQ5EEOokcy9x3ozHnXu5hB8bQCxEJsAtOwgZ
         ZpCdAYfM4X+eqlf1lhP68wae6HmfHx2ElgYAENRFlJnjvRQTRT4n6y3NFkGtpR5SBdXW
         FfTylSxdk3jBq/EOkRUMbrhj40fs5L8ozHRBR5MDWLdBxval5o4KliZrgrT8hJ821t5P
         cJbG/QFB+mdCy5sh9Eyhs3twGco2NPm4ES7f74G9+6VTGZwvLN/K4WluvUDjS5w9m5+u
         gJXJSCp2ap+ZBmJtqb87mMxuplVZb20ivUzrEP2m+0jyjgH/aptJkntiF2jHtZdFiEYX
         5Ojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=1soHViB93y8aOwWKLc0O5wKnfIc1zxKkGfpl10Q/NwI=;
        b=HSgapnQSfPm1zHnMqr6bSxsAlTZAkAl/+OmPLP+yoXkxxjoPi4T7ahYw76m5Xs1jbm
         8/OLBSyoD9QUq9ornV9WjRVcz/1HzhLAo1ZLc2bOa2T8mFbj3c0QfxuDBrj8ni4BMi8p
         Ms7EKcczljW+PXUTgBX2u6bo6dud0fGAkVlutKaVaAAA1TegMbmoSZ0yLR+RgeLgo9Vv
         R43U9G7N5Tyg0lbciW9unm9aNsVaRPhG9iwi8QAtqb1EuEPuh785LLD2jbSQtc272xl1
         ZiUUC/ErYuAgA5TDuuGwH9Dv8PA4LA5GLiwabnWMQwntx/FEpaFAI8JXJV+ox4dLAuto
         Rr8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lcpTFXQQ;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id t203si239065vkd.2.2020.01.09.10.35.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 10:35:04 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id f10so6501592ils.8
        for <open-iscsi@googlegroups.com>; Thu, 09 Jan 2020 10:35:04 -0800 (PST)
X-Received: by 2002:a92:ca82:: with SMTP id t2mr10084169ilo.242.1578594903714;
 Thu, 09 Jan 2020 10:35:03 -0800 (PST)
MIME-Version: 1.0
References: <587116d0-ebce-45b9-b5cf-e6fbc3437b41@googlegroups.com>
In-Reply-To: <587116d0-ebce-45b9-b5cf-e6fbc3437b41@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Thu, 9 Jan 2020 13:34:52 -0500
Message-ID: <CAK3e-EagWT_YBz=akXUsM=qMJX_T4=SowxOWCVjWQ2W_17LyAw@mail.gmail.com>
Subject: Re: Two types of initiator stacks
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007aee54059bb944f1"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lcpTFXQQ;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000007aee54059bb944f1
Content-Type: text/plain; charset="UTF-8"

Hello,

 It is referring to iSCSI HBA cards like Broadcom BCM58xx/57xxx or just
using a standard NIC and the Software iSCSI adapter open-iSCSI provides.

Regards,
Don



On Thu, Jan 9, 2020 at 11:57 AM Bobby <italienisch1987@gmail.com> wrote:

> Under section "How to setup iSCSI interfaces (iface) for binding" of
> README, there is this paragraph:
>
> " To manage both types of initiator stacks, iscsiadm uses the interface (iface)
> structure. For each HBA port or for software iscsi for each network
> device (ethX) or NIC, that you wish to bind sessions to you must create
> a iface config /etc/iscsi/ifaces. "
>
>
>
>  Here I am confused. Which both types of initiator stacks we mean here?
>
>
>
> Thanks !
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EagWT_YBz%3DakXUsM%3DqMJX_T4%3DSowxOWCVjWQ2W_17LyAw%40mail.gmail.com.

--0000000000007aee54059bb944f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><div>=C2=A0It is referring to=
 iSCSI HBA cards like Broadcom BCM58xx/57xxx or just using a standard NIC a=
nd the Software iSCSI adapter open-iSCSI provides.=C2=A0</div><div><br></di=
v><div>Regards,=C2=A0</div><div>Don=C2=A0</div><div><br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Jan 9, 2020 at 11:57 AM Bobby &lt;<a href=3D"mailto:italienisch19=
87@gmail.com">italienisch1987@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Under section =
&quot;<span style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consola=
s,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;white-space:pr=
e-wrap">How to setup iSCSI interfaces (iface) for binding&quot; of README, =
there is this paragraph:</span></div><div><br></div><div><pre style=3D"box-=
sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono=
&quot;,Menlo,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre-w=
rap">&quot; To manage both types of initiator stacks, iscsiadm uses the int=
erface (iface)
structure. For each HBA port or for software iscsi for each network
device (ethX) or NIC, that you wish to bind sessions to you must create
a iface config /etc/iscsi/ifaces. &quot;</pre><pre style=3D"box-sizing:bord=
er-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menl=
o,monospace;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><br></=
pre><pre style=3D"box-sizing:border-box;font-family:SFMono-Regular,Consolas=
,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;color:rgb(36,41=
,46);white-space:pre-wrap"><br></pre><pre style=3D"box-sizing:border-box;fo=
nt-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospa=
ce;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><span style=3D"=
color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:13px;w=
hite-space:normal">=C2=A0Here I am confused. Which both types of initiator =
stacks we mean here?</span><br></pre><pre style=3D"box-sizing:border-box;fo=
nt-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospa=
ce;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><span style=3D"=
color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:13px;w=
hite-space:normal"><br></span></pre><pre style=3D"box-sizing:border-box;fon=
t-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospac=
e;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><span style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:13px;wh=
ite-space:normal"><br></span></pre><pre style=3D"box-sizing:border-box;font=
-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace=
;font-size:12px;color:rgb(36,41,46);white-space:pre-wrap"><span style=3D"co=
lor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:13px;whi=
te-space:normal">Thanks !</span></pre></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40g=
ooglegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EagWT_YBz%3DakXUsM%3DqMJX_T4%3DSowxOWCVjWQ2W_17=
LyAw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CAK3e-EagWT_YBz%3DakXUsM%3DqMJX_T4%3DSowxOW=
CVjWQ2W_17LyAw%40mail.gmail.com</a>.<br />

--0000000000007aee54059bb944f1--
