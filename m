Return-Path: <open-iscsi+bncBC755V5RXMKBB7O4ZLXQKGQECKX2GDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E411D867
	for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 22:17:51 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id n128sf46744qke.19
        for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 13:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cVOwiNwooSlpm2QO1kraO6gadnbBXG2QQMh42GYVvBg=;
        b=c3DxL6GSjWW1ad5YfVpMhP/dBeUh7bzF9I6hVuIrd65gqXIHPnyFcs2o3IiNRMfC0m
         tF+HmZNOmXcNMU8rzaboHZlTL/DOpWUcgsmydCPZz0BZok+XMpBdF85lsLzQIwm5fRWb
         hPvjqkqRGDrkIySbRvgBmEgIpZYYUHUxq8ojhUIX3aLD8FGWZUxaI8C3tPLCb1a9CIYy
         E5nBpy8SLWX4oCPBV7XYVEYCnaGear5vKH4Z01gBqqTfC9w8pTpC73YtIxlJhny7kw6W
         1/VVEnxWTtMi11yKWXqHhDKhpAgwZ/e3AuT83MAV9d+DRI/QD2I4dZGC/fXkm4a2jfCz
         WOpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVOwiNwooSlpm2QO1kraO6gadnbBXG2QQMh42GYVvBg=;
        b=KyGeDtz5skYAqAh9dEonStUJEPm6xE4ZMjQbGPm6EE8YK7BOKI35Wuss0v1E+TKHZB
         7zK2HECwOa2Wcm6gPkJ9OT6g5rUEcr0ntaz9qlWkQEhHjvPl43xrjO0OLj4kBOld3AUu
         Lt16VjQGrklf5KYr2KcGxTlqF26Is9uvaGVSMz6Td9OJus9TgwhkH4ArCRXGXNwFz7eq
         TDJd/O+uf+dfV5AqdY9FcGN2Ocd0GmsTxMRJpIUd/Nmyh6kDR+IohJcPlEPEGaJbieCE
         WA/qeLtM70ZQvpaVo9cFIUwH5j35r1kgFa/z9ORgH98lXpiPcjtgDxfcKLL0klSWrVmd
         t6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVOwiNwooSlpm2QO1kraO6gadnbBXG2QQMh42GYVvBg=;
        b=EmmYQo/QE0Vehd0S7/ZgDzvFBcNuygUR69KO/IBj1CepUSehiavV/4z6gbvC2kaqaO
         uD60aVi8hYHHsUUmLvfKuq991BQYqd6h/CaaEls7Dq2yXdmMRfZ9Ev4udQIwdWZVIGBQ
         9ASQlR/9+qNj1VDJXz2CB4/1PcpLJLDQjukuCarpiuLvaJA/3KqRdHP2ucZvtJ8+Jua9
         wluN1Uyi7ra9fYYhAuQDBJVOiAIU6XXJ5PwxET1b4cs+XKQch1FREhRLdGjZo+t9BTG0
         X1fvOFD/79Gs5uDPJ1ySIrSJHh4JYUpc1Yvm86QkdfMEF9lSo8OJZB12afbw6A4YtooV
         4WvA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWzEsxt8s5V6DcMpHt0kEZ+tyjEQ38eYudof+yVMvt4Ifosz7dg
	kYuiV6Ico4cJ8QGL9zh1jZg=
X-Google-Smtp-Source: APXvYqzs62NWjc8nIYWvas9tBj5IqW1ZVdjXsXHdPAoZwL7cSEJwaQWNhSIzTr/IsC7WLyjb4iomKw==
X-Received: by 2002:a37:674d:: with SMTP id b74mr10621936qkc.396.1576185470046;
        Thu, 12 Dec 2019 13:17:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:f507:: with SMTP id l7ls2276047qkk.0.gmail; Thu, 12 Dec
 2019 13:17:49 -0800 (PST)
X-Received: by 2002:a37:5c02:: with SMTP id q2mr10001076qkb.72.1576185469476;
        Thu, 12 Dec 2019 13:17:49 -0800 (PST)
Date: Thu, 12 Dec 2019 13:17:48 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <5bdc3a89-e685-453d-8908-5a5c0e2f7332@googlegroups.com>
In-Reply-To: <1cf29039-73ae-46df-8e0e-76c8f17fed15@googlegroups.com>
References: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
 <1cf29039-73ae-46df-8e0e-76c8f17fed15@googlegroups.com>
Subject: Re: reboot hangs with "Reached target shutdown", who can help me?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_41_663245512.1576185468842"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_41_663245512.1576185468842
Content-Type: multipart/alternative; 
	boundary="----=_Part_42_487031097.1576185468843"

------=_Part_42_487031097.1576185468843
Content-Type: text/plain; charset="UTF-8"

Okay, I checked CentOS 8, and the services seem very similar to what I'm 
familiar with.

You do indeed need to make sure your nodes have startup set to automatic.

Use something like:

> zsh> sudo iscsiadm -m node --op update --name 'node.conn[0].startup' 
--value automatic

to update all nodes to start and stop automatically, and update startup in 
/etc/iscsi/iscsid.conf to change the default.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40googlegroups.com.

------=_Part_42_487031097.1576185468843
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okay, I checked CentOS 8, and the services seem very =
similar to what I&#39;m familiar with.</div><div><br></div><div>You do inde=
ed need to make sure your nodes have startup set to automatic.</div><div><b=
r></div><div>Use something like:</div><div><br></div><div>&gt; zsh&gt; sudo=
 iscsiadm -m node --op update --name &#39;node.conn[0].startup&#39; --value=
 automatic</div><div><br></div><div>to update all nodes to start and stop a=
utomatically, and update startup in /etc/iscsi/iscsid.conf to change the de=
fault.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40googlegroups.com</a>.<b=
r />

------=_Part_42_487031097.1576185468843--

------=_Part_41_663245512.1576185468842--
