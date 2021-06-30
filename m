Return-Path: <open-iscsi+bncBDUOZNUSUMARBXG26GDAMGQERX2655Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB4C3B82B2
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 15:10:54 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id s35-20020a05680820a3b029021d9ff07a80sf905803oiw.2
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 06:10:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625058653; cv=pass;
        d=google.com; s=arc-20160816;
        b=db6+jBlA0qjjPyhxyakpdof4Ft5H4F2VhxwXf6b5XAyd1HB8VcQ2jZJTBN2W/1EEJX
         t0P1T49F+5J0vpXZQ9yg16hiYhCyX0wU7epwitkHTI8KofzWOatjk4KDWyTpPnXRHfm9
         F6ZB2RbQTeKjqKwtwg7cC9iFZUshtmEKxfcHHf+KKabLMMXlLC6ruSzFbMP3m/GnLOcx
         jzJnK4Mz08r7+er3+fLy0KyQgnXDuckja6l1L2iTCHaMNJQnqjxx2g6XvIBuMep7adzI
         abqsEVL9JPJRGOzQqseAUUjyLwyoU+bytJyRjZKCVCvOSV7uTo3qrjpkfRrbjl/YUwwp
         DuIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature;
        bh=Vo76+XOgHOotBjgqH4+E3aurHRxbab51WssSzNBYBnQ=;
        b=xZukH+Mdy5uYOyfPnGbvxbEpmJk00J6bVdKfBzO+MtKxQxR1GpBmI804WoBbQJOH1H
         CqT7HMMhkPyjVbsOEUjZzT9Nb4YMK8MRw9PNP1QS3Y/ciYg+3KbbEFt0jNvhKzmVA7ZJ
         HZVOsXnmHq7ZTr2nGcf26gac4BiU6XX5i/yQ6FU2S+yij2OYkkrTFVU+ghtLtB1GBqEx
         iHCEqUsfHlLhbvB8ZtOYS0nhOfuHJdooA7qVtHd6AivUX4S9hQ8+2Ek3HmDM2rJ4wsd/
         AOAYl5uybRnCFwmF3QZR5BD46uAQhT94Gxu2meB4Ke8RyH8wZhNPd+n7R/M7FE6FQMcq
         nguw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@comcast.net header.s=20190202a header.b=0YesRRa6;
       spf=pass (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:171 as permitted sender) smtp.mailfrom=paulkoning@comcast.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=comcast.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vo76+XOgHOotBjgqH4+E3aurHRxbab51WssSzNBYBnQ=;
        b=qj3CdIzzCOzWqWlsLCptJFjWtJ8rznFuRRF9eT4z+fAaLMxX/Dl4CotDB43rURNWwQ
         58N7z2z6v9xwmULKJeQlxXwd6mlp02fOYSL7nbBi0rlBroaKp9e3pBZcre2gK4f0uEIY
         5n2OhaH7JWgKZJkn6HVG67cpEhCyXcIcXjYU0U/i6G60pZeEe3WkQBoAga3wGXOwEbkA
         OcdjbMiBMC/kLDeUwtInilOkyVQOZc9qGbM9Cmoyx/SCZZBiVQzLWRVvr4cLxOHZo59h
         XvcGk8TQr/mTOomLJ4ZbgdhPzr5V3OKzSTXi+8TH74M34BrE92h2t5kVuum2clwrNYRn
         j55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vo76+XOgHOotBjgqH4+E3aurHRxbab51WssSzNBYBnQ=;
        b=s132v00b+xaMQcZufzqcT/7qe9K+6jsiQF31wwO8a54+M/g2wmW2Eto12KkrEmxujH
         1d+CG3+dFtfx3F0ugXNesAAk1LDKdGXwqS32Chv7Ak2wz0LK49oH3NtBgjrlCEEQGksl
         AUViNZtzDPf4fa46Mf6cBgl7sSeh5CPwLGRonmM9PMSmWXJ7N9KSApHvMJuRz8of/+sk
         pMroyycl9IGq6807yfW7kXmgrvk/zJwT+An3Q4SJ2SNfU5pMwy7ov4nkTOt9A8DHDW8y
         +JX+ZC1iLoc7FlL+/pcgl4XvXq9gQt2UGsZbvX9T9v94kBN5kCcLrB9pyx7r/lA9I6S1
         HJlw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532R3MgrIiJixCDFiBXybAeb7sEeeANZQA4LdpptMvDET6PWbJ7M
	/6cTYAyHfXEfOvqSidSjis4=
X-Google-Smtp-Source: ABdhPJz1EXnd/H0lASNpZ79CMyN7KStmejF0hX0d0bMDido9NX0WaFa0E+BbEF8Rj+6dOcCqaXu+5g==
X-Received: by 2002:a54:4796:: with SMTP id o22mr17025456oic.170.1625058652929;
        Wed, 30 Jun 2021 06:10:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls759732oik.1.gmail; Wed, 30
 Jun 2021 06:10:52 -0700 (PDT)
X-Received: by 2002:aca:ed57:: with SMTP id l84mr21858336oih.119.1625058652451;
        Wed, 30 Jun 2021 06:10:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625058652; cv=none;
        d=google.com; s=arc-20160816;
        b=tH8GYE4+ovqqi2+5UVIFEQFiAQV6+Da/YaCxwD45MpYq4QqWNZXdcZffgDaUuEqLqv
         2lPE0J8KTksjPif5WYrl7CkvK2ljrkvsC0tkky66Wjab+upSe4Iz8NlzERmOXlR97zw6
         JP8PSbtWohA9VkWVB76pLsM3hVFMhQjeMsHehHWMqwcwyrFnM22ooOSVtEqD74WZ+b13
         giDDi6Hw+f1DplOrs6TQuhNzqZ/C1YtIHNDsNiciFYkoJd3lAzND6dys4kZvAwhl7FbW
         DN3NZGFqLGsgYCerbSXk4QDzcfKQ9/AQj7cNRKaDBgcHj01gl49WOxeiczY1bf2neZd3
         hXXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=XHWxsjqU9Y2KdmwtV1sglkLfOQa2jF/tRKZHx7Co7ts=;
        b=q4F+CMAZp1g9lvIcmVwIih9xyH2yJZS6pN60rKjZc45v3p9ckWZ0HpGXCM9QAb0oeB
         RGJhGLeAKMuz6wU0L7UfhdKbE1W8UuIgZkpSRivmPjD6VwaqMY9fLgGIpuBBfIxYoCJ3
         QNINjw7g37gXhiCVVMsxxBOqgLklsycwmWISy0zZQiHlzZPoac9XMuXf70oxT5rladyc
         HBeoyrVlusuc4hUq8AfXkWSFJjSgZD0QFWTw8vA8jNV2nAqCxhw9l/aeIOsRMmxQBW25
         8HYtDwxi6SGaBJ5laP6AV1PYexV860S5FU1fbTGHQEJsNI/vXxPTSJ8wP+gJfIc6G8bu
         bV+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@comcast.net header.s=20190202a header.b=0YesRRa6;
       spf=pass (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:171 as permitted sender) smtp.mailfrom=paulkoning@comcast.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=comcast.net
Received: from resqmta-po-12v.sys.comcast.net (resqmta-po-12v.sys.comcast.net. [2001:558:fe16:19:96:114:154:171])
        by gmr-mx.google.com with ESMTPS id n10si2087903oie.2.2021.06.30.06.10.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 06:10:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:171 as permitted sender) client-ip=2001:558:fe16:19:96:114:154:171;
Received: from resomta-po-08v.sys.comcast.net ([96.114.154.232])
	by resqmta-po-12v.sys.comcast.net with ESMTP
	id yZW5lOWcofSZqyZzQlPp0u; Wed, 30 Jun 2021 13:10:52 +0000
Received: from pkoning.akdesign.com ([73.60.223.101])
	by resomta-po-08v.sys.comcast.net with ESMTPSA
	id yZySleUyKxo44yZzOlydDn; Wed, 30 Jun 2021 13:10:51 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduledrfeeivddgieduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedtudenucgfrhhlucfvnfffucdlhedmnecujfgurhephfgtgfgguffffhfvjgfkofesthhqmhdthhdtvdenucfhrhhomheprfgruhhlucfmohhnihhnghcuoehprghulhhkohhnihhnghestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnheptdeggeektdejjefgvdegheejveeiteekkeekkedukeeiueffheegffdvffefgfffnecukfhppeejfedriedtrddvvdefrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepphhkohhnihhnghdrrghkuggvshhighhnrdgtohhmpdhinhgvthepjeefrdeitddrvddvfedruddtuddpmhgrihhlfhhrohhmpehprghulhhkohhnihhnghestghomhgtrghsthdrnhgvthdprhgtphhtthhopehophgvnhdqihhstghsihesghhoohhglhgvghhrohhuphhsrdgtohhm
X-Xfinity-VMeta: sc=5.00;st=legit
From: Paul Koning <paulkoning@comcast.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: Antw: [EXT] ISCSI Target and Initiator on same host
Date: Wed, 30 Jun 2021 09:10:49 -0400
References: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
 <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
To: open-iscsi@googlegroups.com
In-Reply-To: <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
Message-Id: <B3425A37-BF5B-48DE-A3DB-3DFC856F19E7@comcast.net>
X-Mailer: Apple Mail (2.3445.104.21)
X-Original-Sender: paulkoning@comcast.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@comcast.net header.s=20190202a header.b=0YesRRa6;       spf=pass
 (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:171
 as permitted sender) smtp.mailfrom=paulkoning@comcast.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=comcast.net
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



> On Jun 30, 2021, at 7:29 AM, Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de> wrote:
> 
> I think I did that about 10 years ago...
> 
>>>> Riaan Pretorius <riaan.pretorius@4cgroup.co.za> schrieb am 30.06.2021 um 12:41
> in Nachricht <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>:
>> I have an interesting question to ask:
>> 
>> Is it possible to share the target on the same server as a initiator ?
>> e.g. server1: target -> server1: initiator 

Yes, I've used that in a test setup when I needed to put a file system on iSCSI (to test pNFS).

	paul

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/B3425A37-BF5B-48DE-A3DB-3DFC856F19E7%40comcast.net.
