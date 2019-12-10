Return-Path: <open-iscsi+bncBC6MFJWO34DBBS6YX3XQKGQERRXEPBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FAC118AE2
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 15:31:40 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id p20sf11458361edq.15
        for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 06:31:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575988299; cv=pass;
        d=google.com; s=arc-20160816;
        b=MfyDq5EitNxQdPTr8WMIn9LDmeP/2VaK6pwj84HgWfYMLdFXK2NwypGMPI8p5btBCK
         /SiGUkQtQCEYpig/6SMJP3INtmK7LnGvcRXWldvOMOqNE0BMl35G/OoKZYDL94Bv6fBx
         ufqWmCJ/5vMTOtHlHWTHPP3IHRTL+GhK63BwOufxyWiz3cWhmgEuxR0fQd0PskvVlij/
         C2QIk/RrltnUB8eshZQG316ZxoAVDF0OWzvBjmad9syy0mbZ1jSzi7Zc/Yo1kqUh6PlI
         saZa5Aj0KWt0yctmvmvB+45DzHGC5Q7dbze0fsc8HUHwfnUmEG/Gcg713BkfChXFHlh3
         pWNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=NjrKXq6j8Oc52ViVtE3V5Iyg9DacIOkIRA3HzteBVLo=;
        b=ThnT6sxjOyDyRd0WaSm8EG7r/P3/fDm2R3LeXcy2ryY1q/1vr6/pTpfxr1hiovCLzD
         psN6rN/1e+a8sYKgaYfpcGmHklc8Z+0i8JrO2GSwTNd7lOjZ8SPdu/zT9NO722tfJQ8V
         8bI9d2WBvgimchkI6oQ3t42+Bi1GcRZE4LvQi0yX3S2S1Lvwvgkg/x8nQdb7Mij7oFaR
         UOtLKLwFJJNlRwi9+TXNSap5WtkTUkubEQlWq2XIF43+1wNuPeCPMG1X36wdZYtgNgRl
         qxysnw/nrgxu5wzUiBLNdV2QxnBCdPKSdl7WkZk7d5/XhjC6Qu6qEjkgGzBQm/fJgJDG
         tgEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NjrKXq6j8Oc52ViVtE3V5Iyg9DacIOkIRA3HzteBVLo=;
        b=rSVfTslzLfMvmp0LyTD/BnJMZ2gIX3KxMJebu7ZYxg1S9WraALzecNr+I68Z65QjDT
         u2rH0L5J5ByCdEDU1OWSA29KefL8RxQpXnyAE8Ndb1bkWqavtXK8ktLGrOU8bH5x45Y6
         64D4msUktXh0cfeTUQeKsdd9CTTkKKxSry/mxG9nj16kc0uTCywMuz5S5tl0JNclS43P
         jb5LurAP7VQ9a1EhVUZ5PrJTmONpva6u39akbtUhg2ehnbjH0Nv6//u/SFhFnLbra8BI
         TWnHYhQB+h8GcInCeY111xXPyNmjFGQZ6LLW1uXnFWSs02LOI3l2SLahsJZ5rJ2aV4ot
         E/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NjrKXq6j8Oc52ViVtE3V5Iyg9DacIOkIRA3HzteBVLo=;
        b=Ow9TUNyLeJFlNTmVVZ3CHJzkBq/qVuyNPAhfE3v+mL6p00RN9qZplTr7pfrOFMUYy4
         tSGKmXruAE3eznZibOzExC1f5UngzFI8+K5rA+YtVoDq3xhFuSlWVCdzngC/pS1t5lF+
         78GiPy3a9ItzKN2UB91R399/X8NulG0Azbmap8tWmtZMd+cazS1VGm9KmwAmEoaIdenU
         4KhzVVsq8Jz2MQ05JKHhCqWrjubACiPPds1GODU4K+JJAcPQPINKPq6QhBn3UPf1JqTS
         YEPImMaUTZRTnUeZMDg0iGIS7e69rShjwGn933mxyv9bCFKHv6BzGfbEGvhHp0O6TchD
         qYGA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUW8++qP4PZgw8dznSRMOSkdxG6QMbyTDfIWpDgSCvFkzdLbpfZ
	ti6zWfXhOqzueg2MvgyTzdA=
X-Google-Smtp-Source: APXvYqz34Jz0VRnOZGgSCreAByt3HmvmWiuoRMGZhAjRWLaiits2EdHI26+r8d0G9bjmXjEE76eRlA==
X-Received: by 2002:a50:ed0a:: with SMTP id j10mr38565655eds.215.1575988299835;
        Tue, 10 Dec 2019 06:31:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:f1c5:: with SMTP id gx5ls4744439ejb.12.gmail; Tue,
 10 Dec 2019 06:31:39 -0800 (PST)
X-Received: by 2002:a17:906:ce4a:: with SMTP id se10mr3950651ejb.157.1575988299305;
        Tue, 10 Dec 2019 06:31:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575988299; cv=none;
        d=google.com; s=arc-20160816;
        b=ugPEO1EigKxTw5OMsIJ9ribRSmPMT9lxXMwWBV11YBiR8nm1NqvSxAl1djWugntOk3
         jpxkkpRHWvMsN7YLWrURB4YOaHz9nYzzZcL7miRy7BLf8PXXn5YFOQIZ3aJUFZ+c6eMr
         5/UUvNJylqusRLv7y99AuB39hhsq+a7vKJmpXLmaFY+2J7lgjU54QobI0IyOhQBYuE4S
         WCseXCOBuSfKd9rPJrtfygZ4AV1yceJ9urukw9VLIQ6G6uhmzUp4nAB2hMt19d6hIZfB
         ExJ1vjB0BnHKRYDT3n7CqMHYSE08T+Xl4jJQVGaRi69hjwJjfrZAvMiz3Dq9jh9dAt4q
         npHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=RcVOEfEk/br3H/lbgPk3pmycrNjGP7h41TlO5GXVaWw=;
        b=dpizvNHSLD3+ZGYAIhjOGgRYT6Z0kJvYL0HYm9jRCuegHD1sXPA9UpdWR7jHeAvo4W
         5A2EsargVFDiNfdWwvOZnGCQpqKv+NWcJU6BSIASkV+M/vitMhBTw7hdWFHPy+nDrnJ7
         zyxkXYZXrdpBzsp98Rf4aei0SV8Zu+zDFqvNoowPTN3MozIiblk82Z2eRN2fRD6X6+T1
         kcbzLFEZwtJ1CUTT/r7arPP2c4eeX0E6TdkOtlzNokEPCdK6PKwQjsM6VZDu5aTo2n/l
         CVlwfBolFEmEngnHI4PkehnyjA3Q75dhaBf/v6XhNt1U8RL0FBCqqIbCzks8f235eLCg
         CFiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id ba12si103485edb.3.2019.12.10.06.31.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 06:31:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 34EE56000053
	for <open-iscsi@googlegroups.com>; Tue, 10 Dec 2019 15:31:38 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 1BE166000049
	for <open-iscsi@googlegroups.com>; Tue, 10 Dec 2019 15:31:38 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Tue, 10 Dec 2019 15:31:37 +0100
Message-Id: <5DEFAC49020000A10003598D@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.0
Date: Tue, 10 Dec 2019 15:31:37 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: reboot hangs with "Reached target shutdown", who can
 help me?
References: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
In-Reply-To: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

Hi!

I think the problem is more related to systemd, rather than iscsi.
Personally I hate systemd, but you don't wnat to know that...

Regards,
Ulrich

>>> can zhu <zhucan.k8s@gmail.com> schrieb am 10.12.2019 um 15:25 in Nachricht
<372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>:
> os version:
> 
> CentOS Linux release 7.4.1708 (Core)
> 
> kernel version:  
> 
> 3.10.0-693.el7.x86_64
> 
> 
> systemd version:
> 
> *systemd*-219-42.el7.x86_64
> 
> 
> Mount iscsi devices on the node(iscsi client node) and reboot os, hangs:
> 
> [image: WechatIMG2178.png]
> 
> 
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/372db1a3-424d-4063-bcdb-ccb0b821 
> df0b%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5DEFAC49020000A10003598D%40gwsmtp.uni-regensburg.de.
