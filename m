Return-Path: <open-iscsi+bncBC755V5RXMKBBWXC4PYAKGQEL2QIKNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF21378B1
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 22:49:15 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id o24sf2185893qtr.17
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 13:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p3xxCqGTSMF7tTWkaxX6/JYCmPmrnn6/SVA2SEUEbaQ=;
        b=ehE0bp2j6oFS8EBDAjkLZnnaqTMhaRlLr5XMtHYPPCKd8mDjrbiL0T6dU2XtT7KopN
         srVQC2xoByZv32uzNNyrDbB2g/w5pngt0ps8eSMFJDsb8I9RwZcerEexNsoauQqGLnBG
         Q1fxBsjSGKqPMbRsB0q+e3GI6Fk+4TzQdCuy+Sh/5K4AXK3cVxEbWrjsVG+m7NRQg+GU
         jxPLOFoACgWXZYhQIy/8pptP7p6eCBNFflh+UJI1jb1QNDJkW6UUBMdaNJCQ1NmprpYa
         WCkS1DJ+g3zjrU7Pi0//IQadxHi5fbz+UC4836+UlTGzI9G5lR7/WEbKZY2TTnNG8Evb
         4uDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p3xxCqGTSMF7tTWkaxX6/JYCmPmrnn6/SVA2SEUEbaQ=;
        b=tmPuaXjV6xJlhAWXZVSMAZzVyOFBJjdy/99+xFJkT734y8APpD6jySSbcae9nytVSX
         nQZkW2voJjndIjVkAmJVvdxNhqP2pqc5hXGEoU55mwDc7ggKXlTR6JhPkjo2u9JC1y8G
         bFcBuXOj1qvK/6lHQja36+hBLpXXQmLgM5xLO3zJBQ9bWF0QQZHMz8hYG2ItfKMyGn3v
         oNhBh1iYe4KUHPPc5WPAq2xRer9AlHhb+EfNja6lo0YJvU3DveNyfoj95WN8Xw1SB+pC
         ot68Bxl6CWkLOLUEPgbSA4zzthfVlTUydaEAXNuqRYBOGk6o4PJzWq4cPCoJDIDpCRm/
         csDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p3xxCqGTSMF7tTWkaxX6/JYCmPmrnn6/SVA2SEUEbaQ=;
        b=qms6j6+MYE9UrHvB0/Z8DoF190uc+qrhRMFwoHbSQ+vy51/epijh0N81EG0S6bHC0L
         /QxYivbwh0XwwbqhZ6m3DqGwZvvU9/8ZOwSqu692QHKBz4jlDj4ICrKxtk4BcBth5po7
         WwkA+BB0RqJflI8JQBqW9D4PBHxnxmtCLUM6JuW4/fBUTZQbGTjg5+S7F/Ly2+f1Fzmc
         Z3B9mAcBPBZmloCDKc3i56k/2jGLIM0baU/nG1nsjrb2zou6i04zW1/0G7dUwaroOVd6
         sNCD+JBxd++dtWDgjg8R3S67nPWllPINCj108JzuKFHim4/0PN8CMiNbVUborwgrUFvz
         nbLw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWov2RkCUNmgMba9d/vb6Y12qZgxYH912JIjtr6xy40KcXgj6++
	Td8KWe0XJfOgJw6JHbxMfeY=
X-Google-Smtp-Source: APXvYqzbYdLSi6WxfY8GJJwz3DfuBvk5l7A61HfDSr2fB3RwK6CyoNLB030rb6E5uzM3UMbVaaKHLw==
X-Received: by 2002:a05:620a:12ae:: with SMTP id x14mr5548190qki.5.1578692954439;
        Fri, 10 Jan 2020 13:49:14 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:18e9:: with SMTP id ep9ls1204411qvb.2.gmail; Fri,
 10 Jan 2020 13:49:14 -0800 (PST)
X-Received: by 2002:a0c:ea45:: with SMTP id u5mr747457qvp.171.1578692953979;
        Fri, 10 Jan 2020 13:49:13 -0800 (PST)
Date: Fri, 10 Jan 2020 13:49:13 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
In-Reply-To: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
Subject: Re: Who know more about this issue for iscsid?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_925_1426480350.1578692953247"
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

------=_Part_925_1426480350.1578692953247
Content-Type: multipart/alternative; 
	boundary="----=_Part_926_1436601068.1578692953247"

------=_Part_926_1436601068.1578692953247
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tuesday, January 7, 2020 at 12:20:15 AM UTC-8, can zhu wrote:
>
> kernel: connection2:0: detected conn error (1020)
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: Kernel reported iSCSI connection 2:0 error (1020 -=20
> ISCSI_ERR_TCP_CONN_CLOSE: TCP connection closed) state (1)
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> systemd: Started Session 3742 of user root.
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
>
> *env*
>
> kernel:3.10.0-693.el7.x86_64
>
> os:CentOS Linux release 7.4.1708 (Core)=20
>
> *iscsi*-initiator-utils: *iscsi*-initiator-utils-6.2.0.874-11.el7.x86_64
>
>
> I can't configure acl and username=E3=80=81password.
>
>
>
>
You have "auth" enabled but not set up correctly.

There are two types of auth: discovery, and session. It looks like your=20
session auth is not set up correctly. You need to know the auth username=20
and password. It has to be set up on the target (targetcli) and the=20
initiator (open-iscsi).

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/b7141d18-99d9-4d93-9252-a5e27393dfc6%40googlegroups.com.

------=_Part_926_1436601068.1578692953247
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, January 7, 2020 at 12:20:15 AM UTC-8, can zhu =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">







<p><span>kernel: connection2:0: detected conn error (1020)</span></p><p><sp=
an>iscsid: conn 0 login rejected: initiator failed authorization with targe=
t</span></p><p><span>iscsid: Kernel reported iSCSI connection 2:0 error (10=
20 - ISCSI_ERR_TCP_CONN_CLOSE: TCP connection closed) state (1)</span></p><=
p><span>iscsid: conn 0 login rejected: initiator failed authorization with =
target</span></p><p><span>iscsid: conn 0 login rejected: initiator failed a=
uthorization with target</span></p><p><span>iscsid: conn 0 login rejected: =
initiator failed authorization with target</span></p><p><span>













</span></p><p><span>systemd: Started Session 3742 of user root.</span></p><=
p><span>iscsid: conn 0 login rejected: initiator failed authorization with =
target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p>
<p><span>iscsid: conn 0 login rejected: initiator failed authorization with=
 target</span></p><p><span><br></span></p><p><span><b>env</b></span></p><p>=
<span>kernel:</span><span>3.10.0-693.el7.x86_64</span></p><p><span>os:</spa=
n><span>CentOS Linux release 7.4.1708 (Core)</span><span>=C2=A0</span></p><=
p><span>







</span></p><p><span><span><b>iscsi</b></span><span style=3D"color:rgb(0,0,0=
)">-initiator-utils:=C2=A0</span><b>iscsi</b></span><span>-<wbr>initiator-u=
tils-6.2.0.874-11.<wbr>el7.x86_64</span></p><p><span><br></span></p><p><spa=
n>I can&#39;t configure acl and username=E3=80=81password.</span></p><p><br=
></p>















<p><span><br></span></p></div></blockquote><div><br></div><div>You have &qu=
ot;auth&quot; enabled but not set up correctly.</div><div><br></div><div>Th=
ere are two types of auth: discovery, and session. It looks like your sessi=
on auth is not set up correctly. You need to know the auth username and pas=
sword. It has to be set up on the target (targetcli) and the initiator (ope=
n-iscsi).<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/b7141d18-99d9-4d93-9252-a5e27393dfc6%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/b7141d18-99d9-4d93-9252-a5e27393dfc6%40googlegroups.com</a>.<b=
r />

------=_Part_926_1436601068.1578692953247--

------=_Part_925_1426480350.1578692953247--
