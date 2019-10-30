Return-Path: <open-iscsi+bncBC6MFJWO34DBBZEN4XWQKGQEJPTD7AY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 796E0E97EF
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 09:16:37 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id s17sf907650wrp.17
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 01:16:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572423397; cv=pass;
        d=google.com; s=arc-20160816;
        b=jgTTIgRRZdtFux1rP1oflAEtgeV25QvLUvb6MDqPoERlwLc9m+d9T21gl00gldGo8c
         BgCMmWB5P3UU7iOSVSjKO3pv0ZKx9Ps69fhp3V7cNK2+BDM9G5cHRun6w+sY/hmg5hWg
         hHGvT7WDLTVT261CnOp/hiZL3K0BUKwEqsKfzGpzi6mM808qvr2NCvE+QkwJPW+x9e4F
         lqG9v9p7UTmO85NtvDK1kCVUmCpfBiD8EQPZXrOu2y2YTorQ96+KQMS8+xSCOI2KT67H
         LVgLymi3G1MsQYFGgt0smlrBinbCVx5RNRpoHMIhp6ZORh6cnvLp+k3a7SoVUxzkkUT6
         kRaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=lYbqu9IGCQDmvbQKJHQ2itkT+J66NnvWhpE+51zRAhU=;
        b=OH/KV2LlCASkFJKW5YYw1CzymTM88qb4WPlsHWb4YIo/+PyLm7qzKTuJX3mXU3u33Y
         /V1nY2YaQzkwEQ281WUqH/lF0/5wkUwl8UJSeliWRVk2JhdFvCR5KsKN7AA4yI4vhr5R
         NSqPC8sYj5rqxIR5qlV88TRTr1brmwc/eT2t15tucEPt9jS9qF6Vu8rPVHHpH8N65RSq
         4KaZABCT/E9L3yKEPz610kJdp9eXdD+xxakD15GW1t33GEx4ISmOELssFRVeqiVUVFDq
         31mkyKcWz6VeDfHNv25HAZr7E+pZ9l9nTVZvjWZZ20g7CGCGeSILFSHVbsdjUtHeLfcD
         YxhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lYbqu9IGCQDmvbQKJHQ2itkT+J66NnvWhpE+51zRAhU=;
        b=E4fbYIOjYoziLYSnOw1gFrcXO2xKg34mlNv5mDT8Sn7/r++zRrAB2m1qYCaJOfbO+k
         v1ve5GS4aYfDoc0oXuOVmpi+c7M9pEjitH2ik0lFVzQt45IXQmB74h8I0kGpiBx0/WTb
         oGf4bHD6CCn+oNxF12+EGxyhR9Y0PUZQJE4cFLD2TtZFj75l3JzmB4Cpqyi/s/ebMYkX
         Oqcp/O4g4Cs5n7aW7vGFjJIwhRD3iMQn9rgNP7Va0MqBZTv50VeRQKo/LI855ajtWjye
         gZGak2LN6Mk8MaMTWcj3+dUROYhj3MPEl5sS6gezQrK6qofcwYtuRN1JUPREQJfAVsWY
         fxng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lYbqu9IGCQDmvbQKJHQ2itkT+J66NnvWhpE+51zRAhU=;
        b=scVs4mdLMIJRMhBIXqvqEVI7LWqjfU48WclH7T8NSKY5iKCPepsgKQh8AgAVjNWG9g
         wW+inN2vQ8Nh7sLybLYlyfCxGNlDfxTvHA2qDLBfkqOf6hM8mJRlm/ZoQqipjkI4ZHPN
         HbMmYxzV1kbUOEzQAQMLSplV56bvFEwm8l+6dnQRablanQpVissZuIF0661GUXX1byy+
         PEoKWbMhj4TFM8sgqjIOJhT3fCvVBN8CJKM3/VLKW4iVZv5i9xBk7Sv+7xfUwmPWJfur
         ABXgYwbLhw3hjGpt3YruLry5YrbCHjG6pKNRGHbKKsvnWAOjeHm+jajAjr7haF4TlMoE
         dHJw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXgOAUaPE1Jda2LGVT3ZVF830HNInxVIoDTJi9XWVQtqu+lPXuv
	cpzrX4iaTZfCDFtN0OejdEE=
X-Google-Smtp-Source: APXvYqxB84fBb32P1iUz0IzdN2WPhWNzA8w6yV8Z3eHlK1Ad1WwBbUdY+oIhbp1hDrD4B06JioSnFg==
X-Received: by 2002:a7b:c259:: with SMTP id b25mr8046960wmj.165.1572423397170;
        Wed, 30 Oct 2019 01:16:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:e74f:: with SMTP id c15ls5891768wrn.5.gmail; Wed, 30 Oct
 2019 01:16:36 -0700 (PDT)
X-Received: by 2002:a5d:5587:: with SMTP id i7mr24287153wrv.289.1572423396504;
        Wed, 30 Oct 2019 01:16:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572423396; cv=none;
        d=google.com; s=arc-20160816;
        b=SahNFqLvgWv3q7zqPIiisOywB/1YPHTg1hWWoNj7GbQSWAKJrQhbnG6ZhIHKZcQDOA
         JPA/EWsg6f+1YoCP0S0xssJAV914g0TV8i3kyjpmIVaKBqxeINKJo20iIwy1sogasc4F
         orYr0WAWE8U26pI/nKaqPK1npJUPS7gykkkEucoZUudcPaDiQi4sD8hfBdHRuyXlakXg
         VQZH5aeoMzGZ3v8UCpUjL/0Dm2VblQlvtGokFWj6HiYjKq031jhAd6xF8U7C5NI0LXu7
         VafEWKfsztiZ3z/cn0r5oWaGwL7/mMTsdER4KBHVwHSHooSM6tyt3J2aDRKtuoKpK3EE
         qFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=HG4AcLr7QDdOkN15qRn/a8maXqOb7d+wFXP4F+Dj2g4=;
        b=KbSJpH7ZryVPVH3jUS8daG7WPKnKr3UUraDpG+Y/40J39gq1KA+vs0DxHBGKOibBUk
         oAMIY82vGhi2g4HHCqXHVne/OhR5IllTFsbUIqXg4ECE2WABdM4kpM6JNJi0yA1PGsoZ
         /oyOd6UMv5bNows/HtmWUhctZ4cE7CdTsl7B3PlMZfumgvtvwOw3Fz1fJE9mpMYxfR4T
         vFtQ/zSCWHC08vYof3CpTT8wN//mBVzHUauYzqtDatZZOkv/sX0ca9P5+pzpjmhH/bvs
         FOjiNRExcXObHPsruUs9XWsioZSEN41emgBL3WfdtjW2RFPtk8XoFUT5MihUbN1TbRL1
         Y/Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id y140si68275wmd.0.2019.10.30.01.16.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 01:16:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id CC73F6000053
	for <open-iscsi@googlegroups.com>; Wed, 30 Oct 2019 09:16:35 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id B5A356000052
	for <open-iscsi@googlegroups.com>; Wed, 30 Oct 2019 09:16:35 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 30 Oct 2019 09:16:35 +0100
Message-Id: <5DB946E1020000A100034B9C@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.1.1
Date: Wed, 30 Oct 2019 09:16:33 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>,<jejb@linux.ibm.com>,
 <martin.petersen@oracle.com>, "Chris Leech" <cleech@redhat.com>,
 "Lee Duncan" <lduncan@suse.com>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>
Cc: <liuzhiqiang26@huawei.com>,<mingfangsen@huawei.com>
Subject: Antw: [PATCH v2] scsi: avoid potential deadloop in iscsi_if_rx
 func
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE@dggeml505-mbs.china.huawei.com>
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE@dggeml505-mbs.china.huawei.com>
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

>>> "wubo (T)" <wubo40@huawei.com> schrieb am 30.10.2019 um 08:56 in Nachricht
<EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE@dggeml505-mbs.china.huawei.com>:
> From: Bo Wu <wubo40@huawei.com>

...
> +			if (--retries < 0) {
> +				printk(KERN_ERR "Send reply failed too many times. "
> +				       "Max supported retries %u\n", ISCSI_SEND_MAX_ALLOWED);

Just for "personal taste": Why not simplify the message to:?
+				printk(KERN_ERR "Send reply failed too many times (%u)\n",
                               ISCSI_SEND_MAX_ALLOWED);

> +				break;
> +			}
> +

Maybe place the number after "many" as an alternative. I think as the message is expected to be rare, a short variant is justified.
Also one could discuss wether the problem that originates "from external" should be KERN_ERR, or maybe just a warning, because the kernel itself can do little against that problem, and it's not a "kernel error" after all ;-)

Regards,
Ulrich




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5DB946E1020000A100034B9C%40gwsmtp.uni-regensburg.de.
