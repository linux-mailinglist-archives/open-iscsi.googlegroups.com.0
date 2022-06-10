Return-Path: <open-iscsi+bncBCPN37WOREEBBB5SRSKQMGQECSODN3Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DBF54633E
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jun 2022 12:12:26 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id m14-20020a2e97ce000000b002556f5f731dsf4953010ljj.5
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jun 2022 03:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654855945; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZ12IgvhcN77rCHG6RCbYKe4v6gkb+vy18WrgAzjsxqg+uf+j+fTm7XvUAWruQpaTl
         IBCRbeutNkbulcAzFqdkQuBMtLq+jtU8JEhwrgMY3ri0Zg8kqSgApEXupUC4t+mecIU6
         cvJqxg2qKoH/F0oIDSqwW5D4ZhdgleDQ3/pZ1T1rhyd+kX20w1Si+37BTvKuzlphmSkI
         ZWb+8hXcz/3dnaKzhY8RzLEo0+OpsdBUroOPeO3pSJk34VFB3GlC/lkYlRIda2r21BlE
         JyGbIJ7fo4riLF4+6mJ410rF8no1PKA+FRy7PQ/oKByfwhOmCualUBrD0IxanvXbS1is
         0fEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=SMyXoIQ7HVosVpqBLDFKKHOgYmcC9ywQjcgcBULwePI=;
        b=L7WnwS8w52IqE6i7q0EeXx6AEByRns6Qq1KiJxxQg5mXY40x+DvZwOF1WIWP/BYQDz
         hLGUL/9GCvimOamDDCSKsaoxPYhh5CYxIfqai8Nb+t3ONK1UvYF5X/wyuOeoTkmYzCVZ
         Q1t7//GH+khvS+Ay17WgHf70S6eVEfbhkMonTK/hac+qIThyiuG8I83O2JwhFpBKo1Ke
         3Ti8ZQuJntsb5brB9XG5ayijNXDoknep+hj93sKkUzn/18mTm6Qf9sGdQYxJhAf+hwoN
         omNvo7B0LwI4Wg4PprMEBgMKZHf8x+ksF5MEcF2wdak/X2OBLzoTzwqPsHNdFym2IUFI
         s5ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=ob3vzHQM;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SMyXoIQ7HVosVpqBLDFKKHOgYmcC9ywQjcgcBULwePI=;
        b=ktAtPvpTFWIJh/OaUcC2AKFZJPaGDdCijju5j4YkWmQZw6blAXRpgy95ImOYgtBjeC
         ZT3ky61Yze9MmFOEGBJpWoxormUVqJrWilwSWUccaCeNqdeXnUTiPtgwJZFM4oPtHctU
         jeH6eI1zZGfkjCIJu1gHk3YTdPbeub3CaFRSpfNIaPqtLTKeq42ancMijOCWXOE6s3Fs
         FmdyXTHWDPqJQFJUEm68fzBbmYPCRCSOlQjEs9dEigHtdr8pEVbc94P5j4hE7GbPMh5x
         11z0sHPZCWShE5S9e5e7ABhw+S1gQh6HQahayEQ9US48Vg4eLj6Ksc9kCrZT99JFKFpQ
         sDRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMyXoIQ7HVosVpqBLDFKKHOgYmcC9ywQjcgcBULwePI=;
        b=k3XHJ5c525iQLXKu7SDrdKyYZIbvrc7KPgp87sSuOWEQmAxDaBxCseAbCxp/eHWTn6
         hIGk4uBTlmHK0UXzcb60Z97kB1m9LdNeE/F2FFbMOpupyhJfSMqMKu2eLaf5jMF16mgH
         fTY6zvHNtSzW+Av4h2jHincz3czbgKo9B440Ly6ZgC8xPAGC9cpgZMycjqoEoRMpztrR
         TJMII6T1mbx4Lg328wnvgSMZ5hEbSOlCzXacKi3wO2KLjrAZjf4xs7llfk1zO2v+VZue
         v+mdGyvE8/4jmk8IFlG9r+pDG7BwqfYt0LRzz1wB8pLjTkLmDblbaA35I9iLM77hi5oh
         qW2w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530cDcs3OYFtt33qe+iscgXVb7lihGbTdMDF1CyNfhfDkde4pRgV
	+TioDON0OvpwXFCeAbBdxjM=
X-Google-Smtp-Source: ABdhPJwZug3h7YLQ1ZNKVGK3+QiFVUbv6KXKPfBO3dc8PB9WNmcpEW+K8ZxgXlXWIdwgRLGC0JPgjg==
X-Received: by 2002:a05:651c:17a0:b0:255:ad4f:fe59 with SMTP id bn32-20020a05651c17a000b00255ad4ffe59mr9569167ljb.278.1654855945552;
        Fri, 10 Jun 2022 03:12:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:3f16:b0:449:f5bf:6f6a with SMTP id
 y22-20020a0565123f1600b00449f5bf6f6als63583lfa.2.gmail; Fri, 10 Jun 2022
 03:12:22 -0700 (PDT)
X-Received: by 2002:ac2:4642:0:b0:479:130c:68f2 with SMTP id s2-20020ac24642000000b00479130c68f2mr25415225lfo.221.1654855942523;
        Fri, 10 Jun 2022 03:12:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654855942; cv=none;
        d=google.com; s=arc-20160816;
        b=BS0I7XShR7cavj9kFmTaV4Oh0A+Bxar92C07bvKvwBBOqRNxaMjART/Ypr/DmwSmQj
         oN5o0ajqM9Sr2pQMusK7je5DtjG1Lj/tDSchwZDvfcjs8QwampIuvGw1DCVs+xHev55p
         8gkyMq7rUt7xTGg2jOXtb3EcPpSIxCsIN8HCQnvWQcfuzC/vp5n3u4leYLuubFM7p5S+
         nqgO8uPXvFonA4vQ49nkz2DWBPk8mia25aXG3IXuVss9yowkX/x4HXK8tzbvVc+QZlC8
         7dLF6IFKOEx+HDycK5XKVPwpEFSRIiKVxtPJ1WYvtsH47MvXl91RG70X71KVPc9lff/Q
         aSYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=6kmg8CZw3aJJuIkR5ofArRH2u89rx0rjRAJD4FMJW50=;
        b=h4BP6j3/VaLqe+5pZQq0t1e/COWr1EMnsOceEwialJfRZr3eJ5i7fcCXy8Y7vO4v5w
         EIu7PXTBW6+DHkOWnhuq+hb2SiO+LTCOj8uL1Avc2QXw1UvdjY7eYqXeTxrr5JIUUXYO
         cOnUyN+p2h2AhPpNdiQGAdyUQV1RIiiAuoxsNuJQlKKLGy9RJYtF/NWMocZSoyS53Mlb
         4P1prwKEzg2ipGwDG5qFRXaxoiDDenPqMincg2nSm8Yc+rYocdxoXEFFSWj+1NiQnMVE
         vccG44FTH/UFNw031qYbT1YE7gSjRNfg5/o3+hHU56rWWuxdqBDrStGvhtYDBVAuKRMH
         duaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=ob3vzHQM;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Received: from mta-01.yadro.com (mta-02.yadro.com. [89.207.88.252])
        by gmr-mx.google.com with ESMTPS id bp23-20020a056512159700b004789faf5d76si584929lfb.12.2022.06.10.03.12.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jun 2022 03:12:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) client-ip=89.207.88.252;
Received: from localhost (unknown [127.0.0.1])
	by mta-01.yadro.com (Postfix) with ESMTP id 37A5E424DC;
	Fri, 10 Jun 2022 10:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
	by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCX-yjIITKsv; Fri, 10 Jun 2022 13:12:21 +0300 (MSK)
Received: from T-EXCH-01.corp.yadro.com (t-exch-01.corp.yadro.com [172.17.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mta-01.yadro.com (Postfix) with ESMTPS id B0E9142497;
	Fri, 10 Jun 2022 13:12:20 +0300 (MSK)
Received: from T-EXCH-07.corp.yadro.com (172.17.11.57) by
 T-EXCH-01.corp.yadro.com (172.17.10.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Fri, 10 Jun 2022 13:12:20 +0300
Received: from T-EXCH-09.corp.yadro.com (172.17.11.59) by
 T-EXCH-07.corp.yadro.com (172.17.11.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.986.22; Fri, 10 Jun 2022 13:12:20 +0300
Received: from T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450]) by
 T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450%4]) with mapi id
 15.02.0986.022; Fri, 10 Jun 2022 13:12:20 +0300
From: Dmitriy Bogdanov <d.bogdanov@yadro.com>
To: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>, Chris Leech
	<cleech@redhat.com>, Lee Duncan <lduncan@suse.com>
CC: open-iscsi <open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, Konstantin Shelekhin <k.shelekhin@yadro.com>,
	"linux@yadro.com" <linux@yadro.com>
Subject: RE: Antw: [EXT] Re: [PATCH] scsi: iscsi: prefer xmit of DataOut
 before new cmd
Thread-Topic: Antw: [EXT] Re: [PATCH] scsi: iscsi: prefer xmit of DataOut
 before new cmd
Thread-Index: AQHYenFLnkgrMqHdCEim3M4HDVs6OK1D5uuAgAAC6wCAAXQf4IAAFcyAgAFR6oCAAJqUgIAAmiMAgABeVFA=
Date: Fri, 10 Jun 2022 10:12:19 +0000
Message-ID: <09cecc56ea2041dd8ccfafcba180f907@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
 <e5c2ab5b4de8428495efe85865980133@yadro.com>
 <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
 <ffc1f4910d2b414c93dfa5d331436a53@yadro.com>
 <d3277470-9ef0-9a1a-974d-e80250bd35ac@oracle.com>
 <62A2E054020000A10004ACA8@gwsmtp.uni-regensburg.de>
In-Reply-To: <62A2E054020000A10004ACA8@gwsmtp.uni-regensburg.de>
Accept-Language: ru-RU, en-US
Content-Language: ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.199.18.20]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: d.bogdanov@yadro.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yadro.com header.s=mta-01 header.b=ob3vzHQM;       spf=pass
 (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as
 permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=yadro.com
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

Hi Ulrich,

> In my primitive point of view iSCSI is just "another type of cable", making me wonder:
> Is iSCSI allowed to reorder the requests at all? Shouldn't the block layer or initiator do
> so, or the target doing out-of order processing (tagged queueing)?

iSCSI RFC does not require to serialize a commands flow. It's just an "iSCSI user" feature -
to send some set of SCSI commands in an unbreakable batch to a device.
But, as far as I understood, the problem, Mike described, is not a reorder but an increasing
of time between full data transmission of the commands from the batch.

> I mean: If there is a problem that occurs even without using iSCSI, should iSCSI try to fix it?
Since that is software iSCSI specific issue it could be fixed/improved in software. How it's handled in
HW offloaded implementation is unknown for me.

BR,
 Dmitry

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/09cecc56ea2041dd8ccfafcba180f907%40yadro.com.
