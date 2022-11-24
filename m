Return-Path: <open-iscsi+bncBC6MFJWO34DBBDME7WNQMGQERNV634Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0B26375E5
	for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 11:06:08 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id s17-20020a2e98d1000000b002771cfb868esf347316ljj.5
        for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 02:06:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669284368; cv=pass;
        d=google.com; s=arc-20160816;
        b=ajcaKmEJPGz6H/73BYaqkTISf0H83cZtwIX/4lkWFPKjFMxo6ClMOtHnzxVXEvi3Ba
         V0IAMBMVlHxDQelfH2u9KFUzhfS2CLi7aeYuhEW95fWWbRwHHGhetj2x9E66BV1nNKDh
         22A2cKSeIQnliz3PitvXeTLEVTJqZggbNKCraVKTrXMrAIiZ6EDEqswigWp0T1XJA7PC
         7fGIkt1Oran6B+Yt2DiWaks6F1zqebc71ngE9DyjOivI5v7tih4PqlAJm2IE5QJ+xUIw
         ximmLd2bwrjGnALjyogm7x+pyV7WBCa/pn+3JEMeSyfeoNTCGWjjxgataDiaQasFiKk2
         lMxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=U21U8Ffaru8+E+X8MHEuCLi5kz4tKtXu55oTfqnLEqw=;
        b=psnuKDVVgPurqe80/DaxAudXAvclrIQ6n48iNmy17c00AqGmnRbUukB/zYOL11vliz
         T0rrSvzGwPWQNPiIDosqzvJ2zuofw5FxLr9vEt9crwI1EDsFBVGTrpOle9JqoIUC0Q+A
         +ZAKSLiVVEiJsW2fFxWXvYBPy9ySXfVGTSl4x9B4bY/J0Er0djmxrnlxaeww/Snxki4L
         quOgsfK262tuM4yMLdZMa7GS4AQBVrttmE4eAohJPYuDMap12LXViqfNRFYo6C300Ohg
         xRXD+Ld+g5FIxV7uDxe7ixskkB+1ZFSI0Xf5rg26sRpd8pHKTV6DbcwGI9YzGnmXahvO
         HApw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U21U8Ffaru8+E+X8MHEuCLi5kz4tKtXu55oTfqnLEqw=;
        b=oHZCoJhN/7RRAunUgVf+I9BWLnXXpLuxoR4LdOqrbxghL/20sAHhoC1n5EV73V4U49
         yQO/kYp6fIKeceULlGIaDlLxZVtd887wTHWu1WrY/xfvFNPt2sTXryo6OetyzGEAtSmy
         D39qk4rU3M8OC1y3fKXZ/a4Qrp+IG+Wv+IyEZXR3q1qsgWVsWF4YfwjsedoHOum7T5GH
         qcElKyaOQ8rYOH4CTa0q07uIdzmudIQuHtJVeb2uf3+GavgoBaPhlUrmMBr5+l4JNxgV
         vhmsuBOBJ8p5P2TVVF87UvjpL90PCfyLD4kwXdRiq/UIHRJu9evsrCzI+xLfSM05FV1R
         oB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U21U8Ffaru8+E+X8MHEuCLi5kz4tKtXu55oTfqnLEqw=;
        b=2zkDPgtGlEhR8TrrvzGsEDMOXZDa9rVwcia8cq34qUW0cue7uA2Dpb1WiAYJUlU8LE
         61et1dI+qeObOco8nROsh4gqG1rawd1xSsSQ4awuzpHW9stz3t7RvD7+/bgFuyaEpdoW
         u0Lx5Ql4K8oQe7zuJXDbZRYV158f/Enotl3IlPgDAhKGu+bHRRNqC4h9EIkYRvXmL/yX
         vSo13cOOOJn9XT+QSOsynVPp0V17wiriPHkZJ1MFgaX1ojrVnLhvbvEYev8UHhTt0oEH
         pEfhqGvneaHyyna3uRIkwVv2lEqUCgZ82CQkBx/TDKDTY3e2OTQTkRTuwAW7oFektUcO
         Q5AA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plfH9pOa/4NNiOfTHuXhI8lgRoJjzQmKXakeu0tb19cDFTFc44n
	wl35g+kQWKCK7K9J5cTqWos=
X-Google-Smtp-Source: AA0mqf4bkGrw5fpXufZAVlE/qwM+ASXMwTHGle4sUHkMRBlkmSTZ4oYb7rn+O37lVbboKT2Ba9goUw==
X-Received: by 2002:a05:651c:238e:b0:277:781a:c55d with SMTP id bk14-20020a05651c238e00b00277781ac55dmr4529087ljb.317.1669284367808;
        Thu, 24 Nov 2022 02:06:07 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:2024:b0:48b:2227:7787 with SMTP id
 s4-20020a056512202400b0048b22277787ls858420lfs.3.-pod-prod-gmail; Thu, 24 Nov
 2022 02:06:04 -0800 (PST)
X-Received: by 2002:ac2:4c27:0:b0:4a2:4df9:4cab with SMTP id u7-20020ac24c27000000b004a24df94cabmr10966039lfq.56.1669284364408;
        Thu, 24 Nov 2022 02:06:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669284364; cv=none;
        d=google.com; s=arc-20160816;
        b=j3d5XUTuON5OAEv6fvkIQMRZx6gKbKVveFoNtw8oEz1grIeuhQxlYWQMrLvZCUgYYP
         WVKR0WL6a1DvQQea3DFNOjqKdPhLOKoGQibirls3IFXkcfW6OxAoOjqjnf38n/liKQCW
         PgjDhAwbk5JqhKY6uXrfZ7vfyI51XVxjp9uDib2O6baQk7ro9gCyN8itTh9kFpw5Kfw/
         Lx3jBM/PyE+dZ9eBYq8CBMTFcbQeBT46PJkucvCD9e/9p7SCXniU0upgqYCcgam2GzvQ
         N/k7d1Fw+e6baSxNYDs0YyQ1/ksfsXvEZahA+VG45nx12NZ640AhUutqkgwWiQINXn0I
         kJ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=kyzz0xBtf85OBb3Z+urkdUnH5EdsPx3E6l4k0kowYRk=;
        b=u9+tEvT19V7DCK6FyOTXM597m5VM5YkP2mrX9RdxfbCDpLZss40/LJZaqoKjBQGAAf
         LL7KwyUmujA2Ldw8faGqE2B4t7duntQXzdHl7fp+e77LFvmPnjlGDvxDxeUupN7DNtV6
         732tmfDmXR6pOr5cxBok6UwKqo8njTYi4o4NHeXSZojfT7F8hotRbIx3eY7sRfwU6/7v
         xDGcANDsecyOpJaLJ0wJDT43xVkTVFZtebBZpaVEVzYSJJOl2zBRpp8RnY08YDaXltM/
         pEEicG/63t3CL72UX3fQmKJmEUR52iw+s2OYfS9shSERS2JsX07Yy4gYFNgGI2I7ogSi
         dtuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [194.94.157.147])
        by gmr-mx.google.com with ESMTPS id k13-20020ac257cd000000b004b069b33a43si23405lfo.3.2022.11.24.02.06.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Nov 2022 02:06:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) client-ip=194.94.157.147;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 14E006000055
	for <open-iscsi@googlegroups.com>; Thu, 24 Nov 2022 11:06:03 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id EF489600004D
	for <open-iscsi@googlegroups.com>; Thu, 24 Nov 2022 11:06:02 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 24 Nov 2022 11:06:03 +0100
Message-Id: <637F4209020000A10004FF7D@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.1
Date: Thu, 24 Nov 2022 11:06:01 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>,<haowenchao@huawei.com>
Subject: Antw: [EXT] Re: [PATCH] scsi:iscsi: Record session's startup
 mode in kernel
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
In-Reply-To: <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com> schrieb am
23.11.2022 um 17:47 in Nachricht
<0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>:
> On 11/22/22 20:41, Wenchao Hao wrote:

...
> Again, I don't believe that's correct. I will test it.
...
Maybe a session capture (via serial line or so) to show real facts would be helpful for the discussion.
Personally I think that information the kernel needs to continue working (e.g. the mount table) should be in the kernel.
Maybe user-land tools can manage the info there (in the kernel, via API), but the primary source should be the kernel.

Regards,
Ulrich


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/637F4209020000A10004FF7D%40gwsmtp.uni-regensburg.de.
