Return-Path: <open-iscsi+bncBC6MFJWO34DBB6GEXCCQMGQEAARHAVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 749433914DD
	for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 12:27:05 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id t1-20020a2e9d010000b02900f5b2b52da7sf251666lji.8
        for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 03:27:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622024825; cv=pass;
        d=google.com; s=arc-20160816;
        b=jGE670Te22F9HHgYdK2LPP0oRAilCeQW2HdCSYg9/qT9NafSK2PCdTKm4736FGC0H+
         TYi3bCjHijCGiCHSnGqcmvVykpbC1EBbxQhT9XtlJlSVGMsLR2k3gcD5wN0KpOfnpNCS
         RESOeYpz2hxgaSS5y49N0rSfIM30BnvVG+O+zIxuuXlJKF7XcYqlghlh5HM1/a9S7GPb
         4P4AahLefbnqhp8wiYy/FYh0JmsKQ/AYtHaTYoTEScP2TiQiT09ultorrBJIwnAOEFos
         Euc6Hoil4lYZWbtOHNmDPM0W6tA4W6ofRYhuHeHB1x4PCpAVUWWw/H1lwHjZlPoCfgvH
         v/mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=LD8UHMZVx+uHFRKR5CwVLjBvUBl8IAq5HJeQsyCb/QU=;
        b=TddCM9zjXsCPP/JMRXFyo79eq/Y9ifzLrQu3c4tfOfrrRMAtBRPHOedms4dyB62ry8
         dLXLWre6PQbDzisvil3SgiySGeZQPxjnQyVTrIuv0g/RzhkC8Y/uvP8E24ZcHmttVEWT
         T51TW/rrmp9biQgHhrRZKQxT2WD1kNVy0EIM4ATJmhCGFPKZrJ/0YWO5hwbvuOjNNm9/
         Ax+eAd7NGgmEZ3at95HDvEPP3x2I1Z16ZOuKmIX3XPXmECSIiinvclhtMcdFb7jhuYog
         5bmdT7FCKD5pMlBGvaXZPGEgfsyvIUXM/73kOih/MPbwwdpQkbGegJ9q7IXR84OvjiGZ
         HSsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LD8UHMZVx+uHFRKR5CwVLjBvUBl8IAq5HJeQsyCb/QU=;
        b=NQyaX+tegJSHJlgnDP0HHpOcSVAOs0kvdDqsaWNXON17YnIPnbPWmEdKkoeInKdoY+
         Iy0+sFhfEKxWCGQTxGARNUej1leJVA0+NrGUkV8IiWMyNJkDn6D27N4Xxlr5Xag48h3l
         /4Yo8+YZ4M/GgJJOHfgfdhy8m96hpmNw0uwi0M+Js68siEpPwB7YoqgrFd61V1ncU+cS
         qLWl7AWMqAMfl3aYEyC9o8Aq/zBV87gj6+aB+dxQ+I1Sr4kbFUIfUlPGwJXyx3zarycw
         rEqV07WNpt2g7ZN7LPumykasQBjvcx0jVTb96n1hKMbfaTFY0Ajgc++XWzbgVce96sZ0
         F/Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LD8UHMZVx+uHFRKR5CwVLjBvUBl8IAq5HJeQsyCb/QU=;
        b=W9svyU28zAaTfgw2v2AS8ef7LNXQFMGk+J3Y4UXhBjPq0awVuOcfPnGjTDo5c+8hh1
         h6cPp2lp/fIdlV7GEh+cI6f9mlPAEmfCN/dJqAcjyotJl9aiGg7LX//UpcV/hwS3MFXV
         47ZlcCACgyq9HhkAw1XSw3dysQMtpjW52cW+SSWZQhoD/NtDvS+/Ak2l+2H+sSptBg/Z
         OWXJIZPfu6SOWLQfLbPqYL5cAP2VAbgCjdN36ddRKgc6CYzmm8WS24glAJRlaM87eW/u
         Pcfr1TzIYzwYkccGskXsIRgrG2zh3JnLGn/U0U6eFNqEBklUT8/wPiAP253m7VRdQb4v
         TK4g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530nU/NKTXZsE4YvsNgm/pF2/K15cpRxhd3qR/14dtoLQcatquLY
	q2Gl9kp/4v1jTR8/JKQPqG4=
X-Google-Smtp-Source: ABdhPJzPaqWT8Ll0/Jew8lqFa6fvLk4shyu1rg0TAvPCFWvdHoDVFwSdwVonlUeoDlWc8EphS2k0fg==
X-Received: by 2002:a2e:824c:: with SMTP id j12mr1664636ljh.490.1622024825020;
        Wed, 26 May 2021 03:27:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls4680746lfu.1.gmail; Wed,
 26 May 2021 03:27:03 -0700 (PDT)
X-Received: by 2002:a05:6512:2307:: with SMTP id o7mr1639424lfu.16.1622024823885;
        Wed, 26 May 2021 03:27:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622024823; cv=none;
        d=google.com; s=arc-20160816;
        b=ZtErtKOh4+WoqgdyM0XLrpGuLvK1tEAFpsUl4tHGlh6OFuZr7/aeOFuQTExqDEbpBC
         yRr+nwYxhJrxkt7yF/1QD+eF69yDz0dONBctZ182mgz5Q3Ubn9njXnKqLUPEu2w2BXJG
         LGn2oNbnaIiCVsZHMYp4pvb810YBa2ksCky5Xdlqn9g/S90/gBPd7UFrwG7jNu1q7ivd
         zj+YNmrBYtqPiH15TelEySEnwmCX9viI15CAjoM0+roukaU/9M8aEPy7xGEoDPUAWu9t
         7xT51RHArHcSPje/xVgW7y2BWthh6dwp3I615PBz7RHsERx76o87u0s/2povjDabqc95
         Jfrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=jkXRsVVt9DE4YvYRmMLOZ67q9/IxnU3orMPSy190IAg=;
        b=q8hCRmdrgTTj2oizX9DtA1iK3cN37QD25PuD8xGZFELB6owD80++p/3OGZvLBfklAi
         K8lYAed2nqvYC4c9DK1EdQvC1I0EyIBarOiQAoH3CTZby09svSZJQTcBrGzVaqwXjrvm
         ISnO8oGMBHg0d/tVdM6bRBtA19JIj9+PFsaXD/amjxJVrhKCTYrAh2PDsQALKUNJPY+T
         5OjG4zTrgjBnPZtxq091q3CVYBFKXLLa3jCGhZ1zGky62Xhh4DTgyEfHMh3BXxnoo2ed
         6uctDF2kajl3UI1Wqq1o2zzTHtdZhjT747XK4xNDDAu5ufhWgeaZWxN+Y8uzA4v8AC/Y
         t9uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf7])
        by gmr-mx.google.com with ESMTPS id a1si916978ljb.5.2021.05.26.03.27.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 03:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf7;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 424476000067
	for <open-iscsi@googlegroups.com>; Wed, 26 May 2021 12:27:02 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id 2629D600004E
	for <open-iscsi@googlegroups.com>; Wed, 26 May 2021 12:27:02 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 26 May 2021 12:27:02 +0200
Message-Id: <60AE2272020000A100041478@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Wed, 26 May 2021 12:26:58 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <open-iscsi@googlegroups.com>,<thunder.leizhen@huawei.com>,
 <dgilbert@interlog.com>, <jejb@linux.ibm.com>,
 <linux-scsi@vger.kernel.org>
Subject: Aw:  [EXT] Re: [PATCH 1/1] scsi: Fix spelling mistakes in
 header files
References: <20210517095945.7363-1-thunder.leizhen@huawei.com>
 <162200196243.11962.5629932935575912565.b4-ty@oracle.com>
In-Reply-To: <162200196243.11962.5629932935575912565.b4-ty@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

(Amazingly I also did think "busses" is correct -- seems to be a common mistake; maybe only for Germans that would pronounce "busses" differently from "buses"...)


>>> Martin K. Petersen 26.05.2021, 06:08 >>>

On Mon, 17 May 2021 17:59:45 +0800, Zhen Lei wrote:

> Fix some spelling mistakes in comments:
> pathes ==> paths
> Resouce ==> Resource
> retreived ==> retrieved
> keep-alives ==> keep-alive
> recevied ==> received
> busses ==> buses
> interruped ==> interrupted

Applied to 5.14/scsi-queue, thanks!

[1/1] scsi: Fix spelling mistakes in header files
https://git.kernel.org/mkp/scsi/c/40d6b939e4df

--
Martin K. Petersen Oracle Linux Engineering

--
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/162200196243.11962.5629932935575912565.b4-ty%40oracle.com.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/60AE2272020000A100041478%40gwsmtp.uni-regensburg.de.
