Return-Path: <open-iscsi+bncBCEJDZGXJAIMB7WQ6ACRUBCBB2ABC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BF2132140
	for <lists+open-iscsi@lfdr.de>; Tue,  7 Jan 2020 09:20:19 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id v3sf30436479qvm.2
        for <lists+open-iscsi@lfdr.de>; Tue, 07 Jan 2020 00:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rv7UjWxJMaYdLRhS7KczVRDw7qWwcOgUAov3pFTDgkQ=;
        b=gV44BeiZYjBZ80JIFEfV0yXNiO0JU9PGXqQiD8Mye11lNOhn2wJNfR9++lP6D5eXa5
         6ztc1FIfeL3THexkI+Sb5Xqa5PCFH8D9XTx81qtVOggBwt4bg8a4bFBabPWmqxOQ93Gd
         Pfhd8h6/y0niGkAAu/TyijwC7kTQ1Eycxi2Lt1XyN2GHe1tB6Zi9GMQ/ART2hjP4xsV4
         /NpEPArtpfaRdwTa2f3ZcMQjj+pNMTlORYDqT9aE1UeHa8cGerYcSIsGDhtnGoij1OKz
         AUv/YBR3sXbw94TrHy9bm/kxSrvql2iy+EU2UyDQzkzFeGlOGQvhIslXg7u9gThFpScl
         CwaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rv7UjWxJMaYdLRhS7KczVRDw7qWwcOgUAov3pFTDgkQ=;
        b=jzqtRaGD9zdQQNi0IydWZEw4WlQvVSs1tglosMvC5pp+IsQNORxrqnnkPr8ey3ytXh
         w1+fzbfxcjnuxcsocBVsdMp+DVvUxlpLS86DZKPupQtEv/sWkFygDEGWNrKFsT/ckVG0
         7Ba6MUZrzNndvqPcVihS8YJlQ7ZXWsf6IF91mkG6f+nB8AsuKCc/ghtL6q6HLesgpIm4
         HtFmBpAYgxY3/wRkZjX9y8tTaqfybaJ6ybmIB3wAxw85Goae6/elmv4MOxLsSEEANNVx
         GiU8KcepgMUsEGeoOxWPFWTa89llJLqiICMtV5+wNOdE7h0PZePr0zn/4YRNojoLlVEW
         qxNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rv7UjWxJMaYdLRhS7KczVRDw7qWwcOgUAov3pFTDgkQ=;
        b=BAWdEWQDM5Z11K95BIfyyixwuh20DkvULnkqFOawMaleVHLWp5QfGzw7Uu09R+KLr3
         f3Cqdd9VQ73+4flWLhjDzPGeoWqgDSA1aFjVnFSVSx5lcdr06NthIypxUvY6xwuMsOm+
         xWJtvSZYE3dsH+KpsmSgPu/HyrZfkICUBZdj/XiwtCjLzI2Hrb8KHdsVXAOVElORWmKF
         3EFWSix2TNRlmGhwW6r9ckz8UiqmlJtmlfKeZrBJG4xGOkZ+XbpzyNrl45O+44fWyoww
         tcEmpN8xkqa0p5IxLRGBj0bHyq6oIkyz/etWNNXZMyOhFO47GDH5chHEsHVeRcekWCMy
         vJwg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWdVkW/a4T6ytZjsE5BMX41NOKMCqbzVg+TuBP013+1xTr379HZ
	VErT+3MdfOJRtU5jNrbO4HI=
X-Google-Smtp-Source: APXvYqz9Wroj0OOno/4VBonNDlsPsQLb/m7cy4dXit6gR4uOzF9SJPhSdijmI2k3sxeSXWjCFJaUgQ==
X-Received: by 2002:ac8:24c1:: with SMTP id t1mr77817636qtt.257.1578385216170;
        Tue, 07 Jan 2020 00:20:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:7d7:: with SMTP id 23ls9315172qkb.13.gmail; Tue, 07
 Jan 2020 00:20:15 -0800 (PST)
X-Received: by 2002:a37:4a8b:: with SMTP id x133mr79816089qka.181.1578385215605;
        Tue, 07 Jan 2020 00:20:15 -0800 (PST)
Date: Tue, 7 Jan 2020 00:20:14 -0800 (PST)
From: can zhu <zhucan.k8s@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
Subject: Who know more about this issue for iscsid?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5536_1589446390.1578385214999"
X-Original-Sender: zhucan.k8s@gmail.com
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

------=_Part_5536_1589446390.1578385214999
Content-Type: multipart/alternative; 
	boundary="----=_Part_5537_1485765345.1578385214999"

------=_Part_5537_1485765345.1578385214999
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=20

kernel: connection2:0: detected conn error (1020)

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: Kernel reported iSCSI connection 2:0 error (1020 -=20
ISCSI_ERR_TCP_CONN_CLOSE: TCP connection closed) state (1)

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: conn 0 login rejected: initiator failed authorization with target

systemd: Started Session 3742 of user root.

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: conn 0 login rejected: initiator failed authorization with target

iscsid: conn 0 login rejected: initiator failed authorization with target


*env*

kernel:3.10.0-693.el7.x86_64

os:CentOS Linux release 7.4.1708 (Core)=20

*iscsi*-initiator-utils: *iscsi*-initiator-utils-6.2.0.874-11.el7.x86_64


I can't configure acl and username=E3=80=81password.



--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/f0bab99e-accd-46cc-9d37-7700773ffc47%40googlegroups.com.

------=_Part_5537_1485765345.1578385214999
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">




<style type=3D"text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 18.0px Menlo; color: #000000; =
background-color: #ffffff}
span.s1 {font-variant-ligatures: no-common-ligatures}
</style>


<p class=3D"p1"><span class=3D"s1">kernel: connection2:0: detected conn err=
or (1020)</span></p><p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login=
 rejected: initiator failed authorization with target</span></p><p class=3D=
"p1"><span class=3D"s1">iscsid: Kernel reported iSCSI connection 2:0 error =
(1020 - ISCSI_ERR_TCP_CONN_CLOSE: TCP connection closed) state (1)</span></=
p><p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login rejected: initiat=
or failed authorization with target</span></p><p class=3D"p1"><span class=
=3D"s1">iscsid: conn 0 login rejected: initiator failed authorization with =
target</span></p><p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login re=
jected: initiator failed authorization with target</span></p><p class=3D"p1=
"><span class=3D"s1">




<style type=3D"text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 18.0px Menlo; color: #000000; =
background-color: #ffffff}
span.s1 {font-variant-ligatures: no-common-ligatures}
</style>








</span></p><p class=3D"p1"><span class=3D"s1">systemd: Started Session 3742=
 of user root.</span></p><p class=3D"p1"><span class=3D"s1">iscsid: conn 0 =
login rejected: initiator failed authorization with target</span></p>
<p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login rejected: initiator=
 failed authorization with target</span></p>
<p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login rejected: initiator=
 failed authorization with target</span></p>
<p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login rejected: initiator=
 failed authorization with target</span></p>
<p class=3D"p1"><span class=3D"s1">iscsid: conn 0 login rejected: initiator=
 failed authorization with target</span></p><p class=3D"p1"><span class=3D"=
s1"><br></span></p><p class=3D"p1"><span style=3D"font-variant-ligatures: n=
o-common-ligatures;"><b>env</b></span></p><p class=3D"p1"><span style=3D"fo=
nt-variant-ligatures: no-common-ligatures;">kernel:</span><span style=3D"fo=
nt-variant-ligatures: no-common-ligatures;">3.10.0-693.el7.x86_64</span></p=
><p class=3D"p1"><span style=3D"font-variant-ligatures: no-common-ligatures=
;">os:</span><span style=3D"font-variant-ligatures: no-common-ligatures;">C=
entOS Linux release 7.4.1708 (Core)</span><span class=3D"Apple-converted-sp=
ace" style=3D"font-variant-ligatures: no-common-ligatures;">=C2=A0</span></=
p><p class=3D"p1"><span class=3D"Apple-converted-space" style=3D"font-varia=
nt-ligatures: no-common-ligatures;">




<style type=3D"text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 18.0px Menlo; color: #000000; =
background-color: #ffffff}
span.s1 {font-variant-ligatures: no-common-ligatures; color: #c33720}
span.s2 {font-variant-ligatures: no-common-ligatures}
</style>


</span></p><p class=3D"p1"><span class=3D"s1"><span class=3D"s1"><b>iscsi</=
b></span><span class=3D"s2" style=3D"color: rgb(0, 0, 0);">-initiator-utils=
:=C2=A0</span><b>iscsi</b></span><span class=3D"s2">-initiator-utils-6.2.0.=
874-11.el7.x86_64</span></p><p class=3D"p1"><span class=3D"s2"><br></span><=
/p><p class=3D"p1"><span style=3D"font-variant-ligatures: no-common-ligatur=
es;">I can&#39;t configure acl and username=E3=80=81password.</span></p><p =
class=3D"p1"><br></p>




<style type=3D"text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 18.0px Menlo; color: #000000; =
background-color: #ffffff}
span.s1 {font-variant-ligatures: no-common-ligatures}
</style>







<style type=3D"text/css">
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 18.0px Menlo; color: #000000; =
background-color: #ffffff}
span.s1 {font-variant-ligatures: no-common-ligatures}
</style>


<p class=3D"p1"><span style=3D"font-variant-ligatures: no-common-ligatures;=
"><br></span></p></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f0bab99e-accd-46cc-9d37-7700773ffc47%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/f0bab99e-accd-46cc-9d37-7700773ffc47%40googlegroups.com</a>.<b=
r />

------=_Part_5537_1485765345.1578385214999--

------=_Part_5536_1589446390.1578385214999--
