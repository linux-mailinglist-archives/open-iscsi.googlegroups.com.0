Return-Path: <open-iscsi+bncBC755V5RXMKBBHNH5LYAKGQEVR7LOGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A971384AB
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:33:51 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id 8sf4281171pfb.22
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578800029; cv=pass;
        d=google.com; s=arc-20160816;
        b=PFRxCp7yUTk0NJKRzceIMDMulhkc4bcntN3EVMmPEQRKzykvjT9kJ/ojaP+K15bZDm
         jwswPW5Yve1d1m/Sk23dHco7XqaDvFvHJ1cXQnUxRJsVAZlHUa4WAoBXYj5OuE6cNwEq
         ddW6NkfoDvYvfPvPUamK4IBK/1KvFCbOZIUP9PL2UuIwWJFC1sV1//iejMJa8TTqRS13
         /DrZIMUNyqXUNMGmkOKt/OauE8Bd1ll1IOVCkF+SYK2/OHswweNJkNO/BtNbhznXvKjr
         Yr7JvPUZCpbuf0resrL0xeIEpV2YBvXCLkQigTFlttFn5TG/6HS8OK/hZ/zAkfPBr3Md
         N7pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=SVmMfYdTVk6ieabM5yDv+suPczlf9J1/DdlVvH/OfXA=;
        b=ytP6bQjvNo8mKNB7CB3BLExnuCBowcB906X0a+GuWYcRttEE7F9GFIrnLM09uWcYLo
         J5wjEnL1WRxgyWZOgfxYSBnSBgxcExQtXq3K5eRsAMW1ce0dZ6vuGYV5MXoYx2APKlCF
         OzVQRt61I0t4wkfFuZSQjkQPoGehJFfS1pLtWOOD6Q1wTaT3FzHfQYhs9NC73vc7mj+x
         9/Jz8Bl7RRDmlTX6s4QZc6KNRuGYC8eMjO09ynCtjhOhGnCrCMNk8sB9FnXbukRs6lr1
         iWq6Oi2OYCPQg5DjRhbh7H8HMOmpVzLEDtCq2bu0HPLteZEIXoWYOQLJJk7c7Qz90ERA
         2WdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+MWv8TZ;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SVmMfYdTVk6ieabM5yDv+suPczlf9J1/DdlVvH/OfXA=;
        b=O2d1dBB+KLthaSJelSQnx+Cb2VpsXx/E7gbh4WypXzIyYU7DQ6oPTcAdHZ45sReT/1
         TXoOgyatNVX9VBHjFG3kV/Xrb9FcF1Gre48OD+SyHy3lNu5MhPZdzOjkI9zWQGQjFiHs
         KN2S+tcxqob7ftTIUAgHmJ8pg+5pwcvSYWmXEaNs4kQID4XoyhMr+sBaMZPh4dqglLPt
         pmREEZLjuQeHKHAs8FSiLTKB1SJds3//aLZd/4xlc6IteH2+L8Lb4zUaJl6Pm4jviE2X
         esQo71Sqo4f8m0pIv7YXgIZync41h1y77kHG06Ztbh+SQAhG0MpbcDguQC0LmhES8+mn
         +eLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVmMfYdTVk6ieabM5yDv+suPczlf9J1/DdlVvH/OfXA=;
        b=Y+HqvryAXskbbJ74tShK5BesNs2Q5qRGjRjooEmSxly6FMFAgVn4bVWmejJUbebuvO
         61qWWL9aZ13lDIyTvmXVeMXhTtFW5dKkJeIOWSliK4u5datKZLLalZhufJryZ6itcccL
         LSVUwL+Xg4f4d/B7hVLIlFWYKrJe5I1j1YI0g3edMx2nlbsusMsJ6SbsxSHrLksBXg6o
         +CEn3EkK2LKGeUyiDyeKR6oZCZc1cUAH8SiHA/EQvIjuyFhFsKy+SHT72A5vXwDVVmfN
         uZxgOnRZ7bhS3NAf3yHpYNJpZB+rrQBr5SbkZF4x4pg43Ume8h05BIs4b0hIyhm/Mryh
         yvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVmMfYdTVk6ieabM5yDv+suPczlf9J1/DdlVvH/OfXA=;
        b=rGbt+6e+69G4HVJzeFie9c+zTz3We2aHY1lmZb9qtcsHcI0pY4WQ6bD01VgC9yMlmJ
         V2q1J5VJwhPZBnUEFEXYtLlOaui29lyZRrETxnGYmI2ZgzSggwDc8ZYdQPEkIbzPf4VN
         yhpjjV2J/V7iiMFA3wPwbRIySRCnYVnJmScVslwZW5vEKPfi38Ewpg1qd/Pls+2V1evx
         KeDsv69Muta4sxsVJRaZklE7CfcaZXTTIKL4WLHY2UihdbxxYN08eNbd9202b0HqSOhW
         sk+dAT5uT7hOMrw9mPnROv6uy5BDR641KxO5ymwN9EH7RvJab/JdDnQtuMIwKeraT7z6
         76LA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX9wRw80W5vvE/YkFkMP5AfPwevn8D5JU6TnBJtUot/5lZzsIXp
	43BXsdzr06ZyFLsVD7XgqPk=
X-Google-Smtp-Source: APXvYqyAtijdhb60NoWY4PeMC5th5zNiktjSUa0YjGQmF5cRVy0Wp/rohOcYCVE8pmmbpd3I4m9zyA==
X-Received: by 2002:aa7:9306:: with SMTP id 6mr13388515pfj.36.1578800029783;
        Sat, 11 Jan 2020 19:33:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls3061187pff.0.gmail; Sat, 11 Jan
 2020 19:33:49 -0800 (PST)
X-Received: by 2002:a62:5547:: with SMTP id j68mr13837885pfb.6.1578800029383;
        Sat, 11 Jan 2020 19:33:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578800029; cv=none;
        d=google.com; s=arc-20160816;
        b=xjkpMwksWP9fVPZQV3jFi8M91NXSh+7cHtXWA0b9QGF58UcdVyMyJ24J+NG8ZQO6zh
         3OAGof9dX3NPMAshz0IovGZZ+2/axkXKu/6I0YRZkjFK5JUzZG1sS0YcyBinKQ3bm5Ax
         eUY2hb24jXDdf3aR5fwv8z3AbQOf/3V+IPC3WEHukj8ObOA7Pay1NqfgISlWXtjXIG1O
         Y3tseDRV6vDWnLuzKbNdcf3yvzIOY0r3XX8L4aR40M5mHLqGNjWDXlximengWJNXrToB
         zegsp0ECOwv+PGif+5kq3ggMyIXsbhhar5E+wxDLZvUWWVrjZorFhAof3UY9967wyB5d
         FkRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=yoSdUnPXhD3/fUbDBQAkUHgn68+9oIIC0nc/uoLiW0I=;
        b=fvIdBd0Hni8e1E7ecebIxWYZgjnFOOHFt/umYXFk3efDYomTJFYGmAx9VszKWfi4BK
         9s5Ko0pQb7ws+5bA2Rr1OT0M2LE56CGNNQaqeJaekjQrQcEGHJ+LSSVO+AYi4nKWgJ+A
         CIXx4jorruIkkRp8K4Agbm1PR0FPJ4aI3Vha6DY3vPdYAndTEbrFEGa/CEtUSWN7p1Hd
         4r/GyYg3ScoslqzTYc5XAgi/vurjTnLPApVMTOzfHK2QZizCGtSda91ruOhurn/t48d7
         wnRnShFUaLnnT3m2GPNowT2NC1C3qcGbdLHQYWsPxuRLItsRKdawriPAXVFrcXR9upm6
         T1oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+MWv8TZ;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id c24si233258pjr.2.2020.01.11.19.33.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id b137so2987617pga.6
        for <open-iscsi@googlegroups.com>; Sat, 11 Jan 2020 19:33:49 -0800 (PST)
X-Received: by 2002:a63:5924:: with SMTP id n36mr14325207pgb.43.1578800029027;
        Sat, 11 Jan 2020 19:33:49 -0800 (PST)
Received: from ?IPv6:2601:1c0:5400:d::3? ([2601:1c0:5400:d::3])
        by smtp.gmail.com with ESMTPSA id i66sm8697190pfg.85.2020.01.11.19.33.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:33:48 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A0E2A57D-1A44-421F-864A-6CDA6226CF79"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Who know more about this issue for iscsid?
Date: Sat, 11 Jan 2020 19:33:48 -0800
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
 <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
 <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com>
 <6769914f-f770-495b-886e-7dcc5569274d@googlegroups.com>
 <1EB02856-CF99-4B41-A6B0-7A89350162E3@gmail.com>
 <CAGJK1K=VYnVrTy+Gync5o2dP+_afwMSdP3-SRgTskz8Q-MPOUA@mail.gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
In-Reply-To: <CAGJK1K=VYnVrTy+Gync5o2dP+_afwMSdP3-SRgTskz8Q-MPOUA@mail.gmail.com>
Message-Id: <6BF4CC94-0C36-4E65-B8FB-98BFBB51FC92@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o+MWv8TZ;       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::529
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail=_A0E2A57D-1A44-421F-864A-6CDA6226CF79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Jan 11, 2020, at 7:28 PM, can zhu <zhucan.k8s@gmail.com> wrote:
>=20
> For the initiator.

Then who set up your targets, and how are they set up?

>=20
> Lee Duncan <leeman.duncan@gmail.com <mailto:leeman.duncan@gmail.com>> =E4=
=BA=8E2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=
=8811:16=E5=86=99=E9=81=93=EF=BC=9A
>=20
>=20
>> On Jan 11, 2020, at 7:15 PM, can zhu <zhucan.k8s@gmail.com <mailto:zhuca=
n.k8s@gmail.com>> wrote:
>>=20
>> Hmmm, I use the default config, I hadn't do other sets for it.
>=20
> For? For the initiator, or the target?
>=20
>>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/6BF4CC94-0C36-4E65-B8FB-98BFBB51FC92%40gmail.com.

--Apple-Mail=_A0E2A57D-1A44-421F-864A-6CDA6226CF79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">On Jan 11, 2020, at 7:28 P=
M, can zhu &lt;<a href=3D"mailto:zhucan.k8s@gmail.com" class=3D"">zhucan.k8=
s@gmail.com</a>&gt; wrote:<br class=3D""><div><blockquote type=3D"cite" cla=
ss=3D""><br class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D=
"ltr" class=3D"">For the initiator.</div></div></blockquote><div><br class=
=3D""></div>Then who set up your targets, and how are they set up?</div><di=
v><br class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br c=
lass=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
Lee Duncan &lt;<a href=3D"mailto:leeman.duncan@gmail.com" class=3D"">leeman=
.duncan@gmail.com</a>&gt; =E4=BA=8E2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E5=91=
=A8=E6=97=A5 =E4=B8=8A=E5=8D=8811:16=E5=86=99=E9=81=93=EF=BC=9A<br class=3D=
""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"ov=
erflow-wrap: break-word;" class=3D""><br class=3D""><div class=3D""><br cla=
ss=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Jan 11, 202=
0, at 7:15 PM, can zhu &lt;<a href=3D"mailto:zhucan.k8s@gmail.com" target=
=3D"_blank" class=3D"">zhucan.k8s@gmail.com</a>&gt; wrote:</div><br class=
=3D""><div class=3D""><div dir=3D"ltr" class=3D"">Hmmm, I use the default c=
onfig, I hadn't do other sets for it.<br class=3D""></div></div></blockquot=
e><div class=3D""><br class=3D""></div>For? For the initiator, or the targe=
t?</div><div class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""=
><div class=3D""><div dir=3D"ltr" class=3D""><br class=3D""></div></div></b=
lockquote></div></div></blockquote></div></div></blockquote></div><br class=
=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/6BF4CC94-0C36-4E65-B8FB-98BFBB51FC92%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/6BF4CC94-0C36-4E65-B8FB-98BFBB51FC92%40gmail.com</a>.<br />

--Apple-Mail=_A0E2A57D-1A44-421F-864A-6CDA6226CF79--
