Return-Path: <open-iscsi+bncBDA4VMEL3QNRBV5JXLXQKGQEZCBK4AY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 141B811746A
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Dec 2019 19:39:20 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id x79sf3120498lff.19
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2019 10:39:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575916759; cv=pass;
        d=google.com; s=arc-20160816;
        b=U0+dcCMwpj9PhEE/OiBP6GAqw9xR1K3s1wvffl3JAyD+ctIQzV7vQ8lnyk9h4pTcUE
         u7mPB/YamxSy7VO9fL6SST+LPGNTnGCJDNySVJB7kPz3vKR9O+glnCd2QUIuFnF6t/Sm
         k8gfgNy4XpCVms/xWjVdyp/bVAfxEFmsNKd+0kaQNjBhIzWyr30L7sgQPT/1BNzI9enR
         8HCuSJX9sVDqr1ecKTdP6HE3CI6QtOQJ/L/FjQso3cc1/vnDLeRMUk3bsBqduKErMxod
         UjEiYPn9up0JcMOAuKVVIkvH/qHjKfynQ4Y9u20x382XhrZ0UPpasMs1vUkhwj0YW/A3
         4dcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=r0Q+jBRQ0UmMa8gwFk6xdfr7BL3rcClu/8EDOy4tquM=;
        b=tuG+arAYnOdvVSS8zuj7bscEmJo0rgIM8IDIbzy4C2XZWUY70qqA8vOlnGUJEs6utL
         hHLFH2JezWI/WKutfDuFiMKEUhI8rddauHo17VzldwueWS3ITlThnKTIQVesmV69xQCS
         MblmIljVSVmCVdzRUt99y0rQG9Q1ohZP/1uJpCMCtGMHTyueLm43ktaH2oo6LML6WOoC
         dlhlNj/eEZ4em4rOBJl9xXnrRHLyGPmZBl+/Kqgw215KeF7IbW2vKsDhYKc6I7DCIUU/
         DfZfa8tg0KdYEhIIT72pNvDpeWiWm0TuJX4kbnpIIl/yUepIDwtc0itDHhHCyoXW7X8f
         QrFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r0Q+jBRQ0UmMa8gwFk6xdfr7BL3rcClu/8EDOy4tquM=;
        b=bDbDqqgQpSWXMnJMgA0jhGCc9kouQamYKrb+HBVJiUHVjV+S2iBpIDbBWyNj9xuXyw
         jrAIxs6K2ew2RApKihuHxOoUh6E4Zvja/YQhOO9++LO/7CfCT8JN/59BWQdKneyeF0kQ
         8WH8eBLrmlxpe6gcFHSZMKymxjB7jwDCTH6WGA+3awI2OF9i0amGhGfVK+PBhOmNBK9g
         UZ1naSvrF26YreenY0ad06vZeDAdRvsn02f8ku8ItEIhkOAJA01uo4JJfot4rz4RmNuU
         N10YCbVl5EXuQzbYe2WVcvS4SmrcytoziBZaXHTLnT6ZqlGHmKoqlrbU6Z3062ESWLbn
         HHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r0Q+jBRQ0UmMa8gwFk6xdfr7BL3rcClu/8EDOy4tquM=;
        b=giAVKmlJatxRXU2/yrE41U/AXxnb2TOTFd2zsbuLYUbe56t/41LfBbOGC5TpacvqJ6
         RAr6Sc7WWdntjOuwyLiBVHab0LK3BxfZKaF9tzQXe7m96zYWVshVvmQZKrddaUtSmt6p
         ggF30nl73pjPEp7nRy3fcKPugwFK7DZmiu4jiRoOLSKyOvnMUnvWL2WqSSLR5oZPspjk
         yU+DLRZteAc3MDqLstoqdsUxDL2NU4w4nxkm7yqkW7BVvD1TL+qnu7vw2ThjAsH8TbmZ
         Myjsy63pnycQjrfef/bbdnlX64IpUQ+a9wGCBAPp8bWPQkEGwzOfimOqhqq+vd5zU/u1
         aZ1A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXWg6sFPY6iuvdXCWP++fMPzdz0vksNqhxF2amfdkx2ExRHr4Ls
	k/frnzsZ7CkIAELRcTXmkoU=
X-Google-Smtp-Source: APXvYqxFS/KksnZTCdRnsMoTKPJH2amkDYLWxZDOzV//E9O0GyNFUedQNNtiet2d0Bq43QG93nB9/g==
X-Received: by 2002:a2e:90da:: with SMTP id o26mr17827590ljg.25.1575916759604;
        Mon, 09 Dec 2019 10:39:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:8255:: with SMTP id j21ls2078656ljh.12.gmail; Mon, 09
 Dec 2019 10:39:18 -0800 (PST)
X-Received: by 2002:a2e:99d0:: with SMTP id l16mr18207705ljj.1.1575916758713;
        Mon, 09 Dec 2019 10:39:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575916758; cv=none;
        d=google.com; s=arc-20160816;
        b=uEWTfp/+CdYy+NOVIIZ0WqpqhtR7NqSnouQ5fUj2eaHJN/yg1J340RKQSi8q9D/XVz
         1t/StPv8Aef2cETPhIVIm4ZDPF4ArtY4NMCgN70NhHnUvtSzjcAX7XKrLsgjS4Ua+iME
         dsDTfh20wGZ1FeOGBxc8BkTe8H3tP1bdcInLHO7gHvBP4KY3iChFb7cwP4bgwPMbffXG
         xetmHPGGInu3Oola2O48PcsQEG2YpzW7jGAF2fIgTTYU2KAyqxowd3OIR2MvymWyluBh
         86Lz1r58qgGgQGkPTeuYJfSRkKnqzQ/qBGhIxBfSv8IM14R3GL8akr+jCDRM3vVdeU9a
         hfjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=7T4/0s7jWmS+yYmY1xTP4BXpq9cNEcRJ3/oxHwqSlTg=;
        b=tfIJE/BMhrYfUBg+L8tzLUMGP1XM/CJkO6M2mn0q4kjBW5Kc+QkL8425hXURzVsVKP
         zWIlNLswjVxbv3BkBM7pX8BGnwK90tVjDsV4Ri9KL8p0c9jQaCL+5f8fwMfoJk5qV8ir
         iCuJvNf+T4cWbpVT20oRZcaEeZELA1TY43mMXKCaXRDv9Yp1MqBrLEmR9ekRiKyR/dE1
         05t0Bm/5WPgqhP4eh2DIsShU6TaAysLWQv/W2bCfmq6l01MjNY2iG3sL+5fmf4w3gD3s
         43qdYk9dpLFsN7SBHPEA5yTudqHdSeg4N1T05JA/EiFWwWeBZsehhcJN8LxHtW2wIrl7
         VzXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id x5si30623ljh.5.2019.12.09.10.39.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Dec 2019 10:39:18 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7E35D290CD3;
	Mon,  9 Dec 2019 18:39:16 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Lee Duncan <LDuncan@suse.com>
Cc: "cleech\@redhat.com" <cleech@redhat.com>,  "martin.petersen\@oracle.com" <martin.petersen@oracle.com>,  "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,  "open-iscsi\@googlegroups.com" <open-iscsi@googlegroups.com>,  Bharath Ravi <rbharath@google.com>,  "kernel\@collabora.com" <kernel@collabora.com>,  "Dave Clausen" <dclausen@google.com>,  Nick Black <nlb@google.com>,  Vaibhav Nagarnaik <vnagarnaik@google.com>,  Anatol Pomazau <anatol@google.com>,  Tahsin Erdogan <tahsin@google.com>,  Frank Mayhar <fmayhar@google.com>,  Junho Ryu <jayr@google.com>,  Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Perform connection failure entirely in kernel space
Organization: Collabora
References: <20191209182054.1287374-1-krisman@collabora.com>
	<9865d3ff-676f-7502-d1a5-dd41cb940cd3@suse.com>
Date: Mon, 09 Dec 2019 13:39:13 -0500
In-Reply-To: <9865d3ff-676f-7502-d1a5-dd41cb940cd3@suse.com> (Lee Duncan's
	message of "Mon, 9 Dec 2019 18:29:14 +0000")
Message-ID: <85h829l4xa.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Lee Duncan <LDuncan@suse.com> writes:

> On 12/9/19 10:20 AM, Gabriel Krisman Bertazi wrote:
>> From: Bharath Ravi <rbharath@google.com>
>> 
>> Connection failure processing depends on a daemon being present to (at
>> least) stop the connection and start recovery.  This is a problem on a
>> multipath scenario, where if the daemon failed for whatever reason, the
>> SCSI path is never marked as down, multipath won't perform the
>> failover and IO to the device will be forever waiting for that
>> connection to come back.
>> 
>> This patch implements an optional feature in the iscsi module, to
>> perform the connection failure inside the kernel.  This way, the
>> failover can happen and pending IO can continue even if the daemon is
>> dead. Once the daemon comes alive again, it can perform recovery
>> procedures if applicable.
>
>
> I don't suppose you've tested how this plays with the daemon, when present?

Hello,

Yes, I did.  It seemed to work properly over TCP.

The stop calls are serialized by the rx_mutex, whoever gets it first,
gets the job done.  The second should return immediately since the socket
is no longer there.

What am I missing?

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85h829l4xa.fsf%40collabora.com.
