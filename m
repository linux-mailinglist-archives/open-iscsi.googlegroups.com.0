Return-Path: <open-iscsi+bncBC6MFJWO34DBBBEM2XXAKGQEHT7Q6BA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAAB103CAF
	for <lists+open-iscsi@lfdr.de>; Wed, 20 Nov 2019 14:56:20 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id t32sf6874101edd.15
        for <lists+open-iscsi@lfdr.de>; Wed, 20 Nov 2019 05:56:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574258180; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCwzdtQFQ+l7rPqTuMDgve5XOUqms7GW8y5XVTF+AJZCMF/xjZzDzzXnyfYGSEjhWb
         GaNOazc/TVVlzjjzi0IipsWAJ8NkepDW3ZnsDndF5Iqi+glIcmkbFAwEaZITEP5XKSFl
         syUcZ66416dxuGz+eDVjaJxekI5yhkhgXO/0+HsWeKXG8PXE3UwuvlgYoXeKh227qaHB
         tgbdW9ZpI1otElogPGaQ4OC4FfLEZK/dXsTFW6M2/IpSn/NzRVL57fxI5E+k7r9juIWP
         hyWYJikxBnRqX28+ZYhVgVlVdf3iZIKykKlcmf5I0Tz/AUqIit/3s1XzGSDQb/8jZWcZ
         zBgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=GHk9UYZ5QWRn3CD0/1WnDMvsORasEhmnjktjmTMTy7o=;
        b=bWjWw+WzZkSftGC7GH6iUAIeXzimvdXjMjO5o2iq8hI/JicXmGx0AmQPX6Qxt9YG39
         Fr1uT9jJsFQedczXorkUhl7bf4KF7p+ruYLv5ryDAR2wP6aH84oBZh+Q6QMA33IDb2wR
         sOg9VBXho7OTmLl4wn02sUWVClD3C7Soxj3SunoA0PKykdHwSS5C4aBsmHWGlYHPJ7M/
         kkuNMzr5ar5fJpmy8N6fXH9D8Pa5jjCgbGwZY5f0xzKlv97Yw7gDS6qRUJz7XU/k8fgs
         SHzqqH7VStskaZHcVZUDCcpwBNkWQCZMZ7bUbMRMODqa7pYBOtlTuyCmZamlKTHx3Tz5
         ZEBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GHk9UYZ5QWRn3CD0/1WnDMvsORasEhmnjktjmTMTy7o=;
        b=SeC5C3KvnZxeCg4QuWKFcjHngIEiVHRMN6731tQDeKnbFg8ALbZmFOdgGRTpPXb+rk
         Uwcns6EnXHUgIpVnORIJBJnRFJQY7DLxrM2NU/7RRJJ8IHnnZJtoF8woaoC/9hUYPpu0
         WrDhltssBFCSKtY/9Fc6U5tekzn8qL2oakCCXJxKF/phzHFhV+zCWF08aXD4lkdQmMHm
         FtpFUG7iNt453GT920hGuJ5sAIJl1/TIp6LWd5HVKDj8E/Cp8XWdb/xLT09y8SSrOL4X
         MDA87mlZLQkOXDe33GwHOMoAeaMVe4N5DOzQ1Qq6odbXNZJ0BT9B6ib2kIFObuJZvuH/
         dTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GHk9UYZ5QWRn3CD0/1WnDMvsORasEhmnjktjmTMTy7o=;
        b=hhhEhL1um26tipOZTMGaYBh1L3llvhG4VRKTXg9T/J5dEsmesHNUtPSbX2nENkpCaD
         AArHWKwRTM+y/z1uc6ntJW5oDiEbZoTePr0zPYbt+3ocLGVtf/COpkNP/rhFJfm7vVu4
         VqVWGs5BV7+vt+90yxyqSPiT1DMDfB499vuzF75Xtzz/2jP9iKnwLXIrgMaAsUyDninU
         9Koi4u2Wy+9/OzrBesJFz6Jg5TmrGXI5NLA2dD7y2PkelJu7u7VEKnhwFiZ0Nj152RtQ
         rQC5Nc593uoUuYSemRtz0HURkGqrFfTg3sRa7cAUUXfalJrTq5s2YTrdt2vU2VS3uhHR
         GhOA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXgVJbfveZjii1FuWdp9McTxeYmkFgwUHg6w5LHWlLoWajSJgYt
	zu2yp4VIeqVyDG3HIgrl0TY=
X-Google-Smtp-Source: APXvYqywsL/JeWHj9j42TT0CHVp6qCwGCXaIjhtxNoXheGwu1pLB+opWOUYzrv1IW60//f99Rv2/cA==
X-Received: by 2002:a17:906:b2c7:: with SMTP id cf7mr5487261ejb.218.1574258180627;
        Wed, 20 Nov 2019 05:56:20 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:b245:: with SMTP id ce5ls1104759ejb.13.gmail; Wed,
 20 Nov 2019 05:56:20 -0800 (PST)
X-Received: by 2002:a17:906:7251:: with SMTP id n17mr5645083ejk.329.1574258180119;
        Wed, 20 Nov 2019 05:56:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574258180; cv=none;
        d=google.com; s=arc-20160816;
        b=adoNuaNVOq8vNH1ce/KEsqwljQe3E+B1uJwW2fLzPo+T7VL7bUoHkeoPrNdrXeWAar
         b4Hi7X8SMm4pzS+cmwC4c/30KtpFiJRyL1Ja/kPvuiMwaXOiJO7QNssoPVLSjfgTEtEu
         n2v5BalBuUWZiXZRohYl81Xfn62Jgx0ozWR4Y5/2zwFub/LuemwDl95alGf/aOb/Bbd6
         k8QzDLV4/7ZPTwNpfqZUMB2U/s+w10gGuWPWDqLThEt/d/lUVnom85+0yUii1L7rjIoL
         +cpEVDme3gwIfhn++ZvTNdoG/Izxh+SLqLiSL2FJatKhefiq8tnmbDaxMhKp+D8AHXbZ
         5pHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=duoCQBj4lgU/AUA5vHm6CDqcEUX05YHuEP+Ee9FCvZk=;
        b=YkxtkYGwrW+BGM6Kf1tEfNTWYX0qlDVv2Can3KB/x7PPT0vABcVl7lmMIT/t3tbpVQ
         8X0n9v1MBrZfzzG/dRxk140Ph/Uoo9yZ7TzhW1gZy4qnDHeC8OuvU4OfIcPfbB8sUbaD
         Xg3aLXAyp3MKJeR/k7r3N4Yl0CSAzuZ10cqZJIic7vJaTUq7GtSYkc1ys4Mtnj0XSwcM
         Eop071SV2qvQ6szU1zpRN/Jl7vbmOp+FZ+6P/gkBCg1dsjXkskQdGDUu+VVeyKojUqgi
         APdKiVupT/QohH48KQE4ol4Ey0kCNtMvMw4Gp3foPs4HGbTkMOjBW+Rk4pwd0lWQNCGh
         etlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [194.94.157.148])
        by gmr-mx.google.com with ESMTPS id v57si2005282edc.3.2019.11.20.05.56.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 05:56:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) client-ip=194.94.157.148;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E710A600004F
	for <open-iscsi@googlegroups.com>; Wed, 20 Nov 2019 14:56:18 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id CD285600004D
	for <open-iscsi@googlegroups.com>; Wed, 20 Nov 2019 14:56:18 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 20 Nov 2019 14:56:18 +0100
Message-Id: <5DD54600020000A10003548B@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.0
Date: Wed, 20 Nov 2019 14:56:16 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx
 func
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> "wubo (T)" <wubo40@huawei.com> schrieb am 20.11.2019 um 14:26 in Nachricht
<EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>:
> In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg 
> func,
> iscsi_if_send_reply will be called to try to reply the request in do-loop. 
> If the return of iscsi_if_send_reply func return -EAGAIN all the time, one 
> deadlock will occur.

I think the correct phrase is "livelock" as the CPU is busy in a loop (as opposed to waiting for an event that cannot arrive ever)
[...]


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5DD54600020000A10003548B%40gwsmtp.uni-regensburg.de.
