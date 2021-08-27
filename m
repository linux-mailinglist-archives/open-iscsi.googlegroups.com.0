Return-Path: <open-iscsi+bncBC6MFJWO34DBBWEPUKEQMGQEMWDQDVQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ED63F9464
	for <lists+open-iscsi@lfdr.de>; Fri, 27 Aug 2021 08:36:19 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id v25-20020a2e2f190000b029019bb571862dsf2283825ljv.20
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Aug 2021 23:36:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630046169; cv=pass;
        d=google.com; s=arc-20160816;
        b=F0PzqnTzEqyvBD8MhpR+IWWQRthyUunaB+3++gTETPQu4kbt9WrVS9+wvbg83v8q1X
         DnHH/Yez1dOxB7QQwSNixz/Y8py1/SAMPxMe9SxNBFHF0tDk9Q6QHnu8TLmi1VAtOjoV
         YjbGbi/IUXhhCMFz8lHxBciGJlah7L/HkRqrbtvo2o8zGwKEuDK75cWMgvoNBRyRfA+t
         eiO8cbsN5cPOdEp9O4Ee0CXsCB2Yy6HVr6zN845VGkPsH3izT7VqXKjKDA4KoazWGpf2
         gJHr/CHh2M7Mh5gkMzm83Ve0hhFG6YPVmobSz0k0QK8O2hJRbHHALCP6QpF0RkDf3+Lx
         RY8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=lAivaSPy/oy2os3UJAau9nschoMffFcL7HjLCox95iM=;
        b=JJHeiK10SVhcXf13kuzpxCtw4awRTdrJbNlGf7XR0qqwGuHRneuDURYPv99OOqMWsW
         veQiNKy2e1UP3Wyja+UQZiDsg7uN2kfP68bwPsoQOLuowzrSlbC1GR/kBe+NHihu6seZ
         svXpNSpiYnwCJVWMiHAOwkf/+AvHM8P5nFUMb9LMv+Q00ZQxJ+zZpDAZBkeJ1efoEyi4
         7g2TcWcP7nuVmrZDAMpHqUHCs+XB4TLdFzJMAV54xGxMO/87Hsxk5ylHdjeWiAIpa1Lv
         aaXEyEsngsqqqpwYetWvSbSsiISVMqClkNhA8WvBMJtko2n9vZlN+Ok87GUBb3wZkYMf
         4XsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lAivaSPy/oy2os3UJAau9nschoMffFcL7HjLCox95iM=;
        b=L3yj655khakZ/hoPa6zCRo6D8TXl/WRtEN/i6Quq2FaOjfh1hmvTuF91MBI4wMsF7a
         gaEkqMrErgtgVV1pxp3GH2gR+i2s8xogXM2uFvw8XocCUmMPAfLIrtrgYar2ebJ5qkSW
         CUM/Dbg3xO+Ik+qYSueBv83/zP7AyYmi+efhlEVHc8yyf4mmjNsQ8x/UvjvLvUFgNwkh
         DygatdFtQdnOHskZuS3ZdmuJOAJxARlsSwACCWNmQX5Mdf6V1+B/XefSPZIFWkEUSxsw
         UjYHjcw1F8rk3zzDGcbN1WzFNIjx2DDCp1DmONCmmZvZxBl3GataQTcOLSui71fgUBTw
         8tLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lAivaSPy/oy2os3UJAau9nschoMffFcL7HjLCox95iM=;
        b=WzHkTjN8XfZpLiYNHbiRf7Sz4o4KMakh4096SZhWzjnljGgkK3B6bJ569vaxqFPE3v
         wfrLmN+4tTJeZ4PhG6cuOMrF5Ayt94VyCmg48zBr4WSUcZmH7pRKc4USDfiSxbXnHkOr
         mGk+ooYBSPKQFbmmer23jscn4b2eaAxC8x3ZnKNyllRuwuNaLbgNHPwX5AAvQzOC/cha
         DVeCPkOcMjJURM/C+rlGBewDJc+8BB+3FHKkfEg7qlXdcaU3l+xcd4Yl2C3oNx9Yj4jo
         FMLkg4yG3TM65v8x1/7EYMRuWIma+1Las90jJxpCAYqxyEX8NWq3TRCDUp5sQqy6Lnci
         VfaQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532Z7S7GfH+8W2tL3cGzVGgsoyw35FPZ01H7dtK2evKRvF+HnrPW
	uh0XDPFJVhBOlbt6CxP5VLo=
X-Google-Smtp-Source: ABdhPJyLNtmyPz+b3AXs4z99OGo1mX4EKERidT28r6UTxOE8clAtgCagdBlfelL4n2BUV30TfwxopA==
X-Received: by 2002:a2e:9cd9:: with SMTP id g25mr6294122ljj.346.1630046169093;
        Thu, 26 Aug 2021 23:36:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1750313lfi.2.gmail; Thu, 26 Aug
 2021 23:36:08 -0700 (PDT)
X-Received: by 2002:ac2:51b4:: with SMTP id f20mr5532927lfk.632.1630046168041;
        Thu, 26 Aug 2021 23:36:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630046168; cv=none;
        d=google.com; s=arc-20160816;
        b=PRkTyHkTCRqmLnLXNubKRRX9QZ3HrDhfMKCS5ToWAxNvdc0esWnvuFH9ArKHCU+Rma
         fem0s6SGJeTeX0g6qoUS5WSJnXOzcfbhtEgW3+tlxnUnVQ5PzvpHWcKiLuXzkh1MeUBN
         rbC8FI5qXGn85ss/UJxfWx1Kt0qESbGHhuY1jbr0DAm2vBFAKdIUiX+JC/cFpYghOcXM
         KoMfGgDB+7diNyJWhtJx+it3qcVUXUIPKPJoU6feWDPsdXdiA5z8k9vJUYgQ+sbZt7Wf
         3EwLOPofxbphRbSkEPvozW+Al8jx08iPKEpgyj3VSsGRhwzBcq1LR6TmKLAfH/u9D7l8
         MUlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=yf7jixqXnoLCJ56X5jrkMDfKCFxYUY1P7hmrbpu4UYM=;
        b=eggoaXf9LK7BRV02M26Lz7r5cDtmWjiKF3qjIbuqWVLJyUhpMK0yMjoXRRHN1/jcpt
         erkzjJBY9Lggu2Gl2ULenYLpgRHiIHQdinE2d0vJOBrIamNDhcz5vJbQwUC8sLVepM+e
         YWj4Bqk2s3tSW8KdQx0kgsMSmCkeTJyCQKjmWEk/n8sZXCSWPIEHoloqFkREJjgjFgu+
         e0dH70GEak+O5bhuQk0wIbPVml2uGH8ksoFbSURpL4lr4Ge7xCPKZyVGsLd0BuvXBXqT
         w9FMey03pj2iOaHZ7ypESnQnG4IXa7mAdXV7ymYLlw9yHB5yK18I94e0ekfR5C7SUNrw
         2N4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id p7si341002ljj.5.2021.08.26.23.36.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 23:36:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E1138600004F
	for <open-iscsi@googlegroups.com>; Fri, 27 Aug 2021 08:36:06 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id C2A28600004E
	for <open-iscsi@googlegroups.com>; Fri, 27 Aug 2021 08:36:06 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 27 Aug 2021 08:36:06 +0200
Message-Id: <612887D5020000A100043866@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Fri, 27 Aug 2021 08:36:05 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] linux iscsi target setup for IP camera
References: <a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n@googlegroups.com>
In-Reply-To: <a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

I think at the very least you'll have to provide some details (like logs from Linux, and maybe some details from Windows where it is said to work).
Or a technical specification of the camera at least.

Regards,
Ulrich

>>> Fernando Perfumo <fp2031@gmail.com> schrieb am 26.08.2021 um 16:44 in Nachricht
<a410c8bc-f3d7-4d6a-a6d5-f8dbdcd62d41n@googlegroups.com>:

> I'm trying to set up iscsi target on Debian 11 for recording video from 
> Bosch ip cameras.
> 
> I can connect to the target from windows, but not from the cameras.
> 
> tcpdump shows in the negotiation's packets the presence of "X-" parameters 
> on the camera TCP packets.
> I've seen in the iscsi RFC these extra parameters are optional.
> 
> Does somebody knows if the existence of "X-" parameters can break the 
> negotiation of targets and luns on iscsi linux implemetations?
> 
> There is no more references to X- and X# parameters on internet except on 
> the original iscsi RFC, else I would have found some. 
> 
> I want to modify the iscsi sources to allow admins to test and supply 
> convenient responses to 'X-com.whatever' maker's parameters, and I would 
> appreciate your suggestions.
> 
> I've heard these ip cameras work too with microsoft's iscsi -non bosch 
> altered- target implementations, so it may be only matter of supplying 
> convenient responses to X- parameters.
> 
> Thanks
> 
> 
> 
> 
> 
> 
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
> https://groups.google.com/d/msgid/open-iscsi/a410c8bc-f3d7-4d6a-a6d5-f8dbdcd6 
> 2d41n%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/612887D5020000A100043866%40gwsmtp.uni-regensburg.de.
