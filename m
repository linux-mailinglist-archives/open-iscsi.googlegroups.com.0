Return-Path: <open-iscsi+bncBDUI3A7H4EORBHHY2LYAKGQEEXGOVZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25891132CBC
	for <lists+open-iscsi@lfdr.de>; Tue,  7 Jan 2020 18:13:02 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id k9sf79731ili.8
        for <lists+open-iscsi@lfdr.de>; Tue, 07 Jan 2020 09:13:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578417181; cv=pass;
        d=google.com; s=arc-20160816;
        b=oMAOQYvfSaxE2//PZ+xs4PGmWKaU6NJEm5tgiuJoFUr3CDM5/tHi8VXRELk43TlNb3
         wzxwm6tvtW+024Rb23a+NontHDw/jrkvYYTkqzY2huxvy8i2DmcNX5era8gxURoGSIUB
         DwgG2ruKqiAxK4/QOpO79k6rcS5c4Mr8N1B9hRF4khegy5XOGXF5NxQzZ0Ow/fhEpyOS
         fZYA15BFHAqCUvglzHxrJlpHAGqLhiv1vpr5DMVmPR4WhKbl1L+T73rRY/slxOX8f362
         PdzgP9ifZazZyzuv1A+/T/PI6qpvpGMhd04o2Rj576ZSxLYpBQJe7zK0vTyzW7rZl7Jb
         eI1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uF9K+anDmU1wTXEEEXNZsMJjzPVjrTh4+iLgR+BnWuY=;
        b=Cc95wIh8twg+RT3kmR9yzzxvYknbPxdrd6zgJzS8w6muzs2m4ni9/XfAYvFdqsy/HY
         9+iMGN+yJpYf7H1YFLduThqz6wCrglNdy6YCLELmMikNv3/CmMMj7aD8DqApa8oJxAz9
         e7kRmPDzrlCpXI7AxKkxG05Z17fMAQtrSkTewHoEvxX8qYOUBeGcdAR2gx4/vcQ3klfc
         m6eaL/C+cenfpQ/FZHz4Bcma+/fsvPwGKwYzR6FZt2Vbe+5hvZcLMcbWE5lLWV7nVlLS
         dSBp6BZSAckiaK/5wb1NKjlGkvIeBNH+ghXGnT5BBmxUk64M9ywkm3nnxQU2wjHWg8LD
         jKZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623 header.b=Pps1r2Wy;
       spf=pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uF9K+anDmU1wTXEEEXNZsMJjzPVjrTh4+iLgR+BnWuY=;
        b=VZvUOuupUl4w8Bph892NkfmuknoYGp06DP4B6eogc2CPWyRA5xVPOLX7Of5VXykDNv
         I5eYeFz3wLchZmXFQRPEu6bNUNRJz1ihbAtohH6TGYqnmTbRpde2jAJyZx1LFpEQf41o
         MIy2uSOTsKcemA9UvK4MxG+2QstrOwQQjowyL0P4wfyy6LCy1U855e6OFTspNvOA2wJr
         DgAEZcvslWOLX+0maSQGcUnSEJ7+by7L3lkAk8QD/K8BvRClwdiF+Gw4VpcUZR0cszgb
         URdsau1Lbi1hp0UvoO3MzdlynEXS7vxa47FgQEwlWxZ4vQJAn9eowLa0kVx1YDCgMtvH
         TBAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uF9K+anDmU1wTXEEEXNZsMJjzPVjrTh4+iLgR+BnWuY=;
        b=i59kP1vdvUeJXVeve7ZzTr5Ii0+GgZAuAGdDfsKpshiQLKE0oxAgZzCmhtpUek6Mry
         +VhPkI25heHY7brum50rMP/44ejJHhiyEtyZmz2ngiCJa+3EZBK18FFkICU2Ed/vfa+4
         qv2ASNT4qOcrOq4kWZH5dYRWbJ0iwxsPbJaAMzJC4nfajDpFLye13xOBmYxthhB6/j2N
         GgqPCeplJcbBvD4txpzUfoYP4aChUU9HXVtQhlfA7vl7Jj0hXg7h0qkFTrn+R5QS+gUc
         8EKhqZPOIiIUb/r8fYjIR04wmsyg1QRbm3rbWMXppauwDHcIq0Cd8mBXGCNCOy4uk93c
         gqFA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVDTO4A2pDsP6aZVLC/qDlGotUHySG1vgaqCRL3j0KJ+TbB9v4g
	Wzyc352zAv050SESBKhCefs=
X-Google-Smtp-Source: APXvYqy4XBzYRL8d9n4EEBaY2fa+8raR4SmX+8FXlVIbT/kv3f81DucfJIkgepO/veVQ8VIsXiSk1w==
X-Received: by 2002:a05:6602:24ce:: with SMTP id h14mr49944819ioe.268.1578417180878;
        Tue, 07 Jan 2020 09:13:00 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:b657:: with SMTP id s84ls69020ili.3.gmail; Tue, 07 Jan
 2020 09:13:00 -0800 (PST)
X-Received: by 2002:a92:9184:: with SMTP id e4mr120724ill.70.1578417180523;
        Tue, 07 Jan 2020 09:13:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578417180; cv=none;
        d=google.com; s=arc-20160816;
        b=lLJDxY26trj9rZwAKrmQ4UdrZ8snZOdVjgtcPiGOz+quPsfPTdhmgfBbcphZD+n2d5
         Pk2Pxo21UttM6nu3EBsJaF3AIapUN8OY35bKyJue+YC2yeCev+vJcjiwCngx/CChcfF+
         jYpEJJhqxNcXj5hByDPmNDUSf17GgcP0VKIGsHjNLok2jjYLrzCGmPVg7P9L+0SMJ8Bh
         tEG8m5Npe34r8gmo2CD70K9ATjtFpoQ56/xc9GfwbcZO3mNn/rTV3+a1SNMQsHbool2N
         L+YX2I4y4VQj6Lxdc1ZpI8OmlubJ36Uu1JbG010d/TBU92JRosfb/DaKLRHvUOom7X1Z
         SYTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=GEbpEpZvP8pIKyf8bTrxmU+veHSR2JQNLhvFWPQDwyI=;
        b=TGkEzuwPvPGZ16bkcS94u+Q+xX58ZZfLGrGiWAuOYYAbgQIYHS7VGX2JJtcDikTJJ3
         l6Wa4MgeRQu7Rr6/wywsm8qj6mBCHGIjgFY+fwxqMB5KBl4FLP2vzFxr3Yg0pPPi5Z9i
         rlP7Ta6yix2IKNpKdSOPy7qu6vW4vIzsi8pvjut7x5YHwaVLWlhSZL7PcW78v+yVaaa5
         cChWP2ldCfDfy4XInuNPX5blZFJf4ZGCMcbWo4knIHYzwUfclUXNEVZMFouIQ34kdVuq
         BYtG/7rd/gy1R1bHwXWs2CVA67PdhtvAccZfzbX8BTKxSwKCs1YzvQSaCc6fhEuXyXxd
         uP1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623 header.b=Pps1r2Wy;
       spf=pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id h4si29476ilf.3.2020.01.07.09.13.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2020 09:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id c16so87735ioh.6
        for <open-iscsi@googlegroups.com>; Tue, 07 Jan 2020 09:13:00 -0800 (PST)
X-Received: by 2002:a6b:f617:: with SMTP id n23mr60763703ioh.155.1578417179489;
 Tue, 07 Jan 2020 09:12:59 -0800 (PST)
MIME-Version: 1.0
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
In-Reply-To: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
From: Robert ECEO Townley <robert@eyeconsultantspc.com>
Date: Tue, 7 Jan 2020 11:12:23 -0600
Message-ID: <CACE8FwnY=urpRfL4jNENFXY_6MN4TJ+AN_aZD0Uac2F+BPyRqg@mail.gmail.com>
Subject: Re: Who know more about this issue for iscsid?
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004a910f059b8fe3cd"
X-Original-Sender: robert@eyeconsultantspc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623
 header.b=Pps1r2Wy;       spf=pass (google.com: domain of robert@eyeconsultantspc.com
 designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
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

--0000000000004a910f059b8fe3cd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 7, 2020 at 2:20 AM can zhu <zhucan.k8s@gmail.com> wrote:

> kernel: connection2:0: detected conn error (1020)
>
> iscsid: conn 0 login rejected: initiator failed authorization with target
>
> iscsid: Kernel reported iSCSI connection 2:0 error (1020 -
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
> os:CentOS Linux release 7.4.1708 (Core)
>
> *iscsi*-initiator-utils: *iscsi*-initiator-utils-6.2.0.874-11.el7.x86_64
>
>
> I can't configure acl and username=E3=80=81password.
>
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/f0bab99e-accd-46cc-9d37-7700=
773ffc47%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/f0bab99e-accd-46cc-9d37-770=
0773ffc47%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

I get the names of all the different iSCSi projects out there mixed up, so
forgive me if i am on the wrong list to mention about the targetcli
freebranch by Andy Grover of RedHat.   It is the one built into the kernel
and the default for RHEL 7 and newer versions of Ubuntu.  He calls it
freebranch but Datera.io contributed it to the kernel?

Do you have root access on both target (server) and initiator (client)?

If you have root on the server side / target, *targetcli *is used to set
the username and password.  yum search targetcli.  There is an attribute to
set the password.  If you forgot, info can tell you as well as

` cat /etc/targetcli/saveconfig.json | egrep -i '(CHAP|PASS)' `

*targetcli*
*ls*
*cd
/iscsi/iqn.YYYY-MM.us.domain.iscsiServer:ramdisk4gb/tpg1/acls/iqn.YYYY-MM.u=
s.domain.iscsiClient:client*
*info*


Would watch Andy Grovers targetcli videos on youtube.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CACE8FwnY%3DurpRfL4jNENFXY_6MN4TJ%2BAN_aZD0Uac2F%2BBPyRqg%40mail=
.gmail.com.

--0000000000004a910f059b8fe3cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jan 7, 2020 at 2:20 AM can zhu &l=
t;<a href=3D"mailto:zhucan.k8s@gmail.com" target=3D"_blank">zhucan.k8s@gmai=
l.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">







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
 target</span></p><p><span><br></span></p><p><span style=3D"font-variant-li=
gatures:no-common-ligatures"><b>env</b></span></p><p><span style=3D"font-va=
riant-ligatures:no-common-ligatures">kernel:</span><span style=3D"font-vari=
ant-ligatures:no-common-ligatures">3.10.0-693.el7.x86_64</span></p><p><span=
 style=3D"font-variant-ligatures:no-common-ligatures">os:</span><span style=
=3D"font-variant-ligatures:no-common-ligatures">CentOS Linux release 7.4.17=
08 (Core)</span><span style=3D"font-variant-ligatures:no-common-ligatures">=
=C2=A0</span></p><p><span style=3D"font-variant-ligatures:no-common-ligatur=
es">







</span></p><p><span><span><b>iscsi</b></span><span style=3D"color:rgb(0,0,0=
)">-initiator-utils:=C2=A0</span><b>iscsi</b></span><span>-initiator-utils-=
6.2.0.874-11.el7.x86_64</span></p><p><span><br></span></p><p><span style=3D=
"font-variant-ligatures:no-common-ligatures">I can&#39;t configure acl and =
username=E3=80=81password.</span></p><p><br></p>















<p><span style=3D"font-variant-ligatures:no-common-ligatures"><br></span></=
p></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f0bab99e-accd-46cc-9d37-7700773ffc47%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/f0bab99e-accd-46cc-9d37-7700773ffc47%40g=
ooglegroups.com</a>.<br></blockquote><div><br></div><div>I get the names of=
 all the different iSCSi projects out there mixed up, so forgive me if i am=
 on the wrong list to mention about the targetcli freebranch by Andy Grover=
 of RedHat. =C2=A0 It is the one built into the kernel and the default for =
RHEL 7 and newer versions of Ubuntu.=C2=A0 He calls it freebranch but Dater=
a.io contributed it to the kernel?</div><div><br></div><div>Do you have roo=
t access on both target (server) and initiator (client)?</div><div><br></di=
v><div>If you have root on the server side / target, <i>targetcli </i>is us=
ed to set the username and password.=C2=A0 yum search targetcli.=C2=A0 Ther=
e is an attribute to set the password.=C2=A0 If you forgot, info can tell y=
ou as well as <br></div><div><span style=3D"font-family:monospace"><br></sp=
an></div><div><span style=3D"font-family:monospace">` cat /etc/targetcli/sa=
veconfig.json | egrep -i &#39;(CHAP|PASS)&#39; </span>`=C2=A0 <br></div><di=
v><span style=3D"font-family:monospace"><i><br></i></span></div><div><span =
style=3D"font-family:monospace"><i>targetcli</i></span></div><div><span sty=
le=3D"font-family:monospace"><i>ls</i></span></div><div><span style=3D"font=
-family:monospace"><i>cd /iscsi/iqn.YYYY-MM.us.domain.iscsiServer:ramdisk4g=
b/tpg1/acls/iqn.YYYY-MM.us.domain.iscsiClient:client</i></span></div><div><=
span style=3D"font-family:monospace"><i>info</i></span><br></div><div><br><=
/div><div><br></div><div>Would watch Andy Grovers targetcli videos on youtu=
be.=C2=A0 <br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CACE8FwnY%3DurpRfL4jNENFXY_6MN4TJ%2BAN_aZD0Uac2F%2BBP=
yRqg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CACE8FwnY%3DurpRfL4jNENFXY_6MN4TJ%2BAN_aZD0=
Uac2F%2BBPyRqg%40mail.gmail.com</a>.<br />

--0000000000004a910f059b8fe3cd--
