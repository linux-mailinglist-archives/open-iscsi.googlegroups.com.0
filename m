Return-Path: <open-iscsi+bncBDLPRE656MLBB6GR6L4QKGQEFH5CLBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id DD83B2493CC
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 06:22:16 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id p12sf5097020lfk.21
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 21:22:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597810936; cv=pass;
        d=google.com; s=arc-20160816;
        b=LRx+czsPKaYHQ+ur9t8glq7+iRbE3iQgFu6T5zaU7bQWlf1TrHPbmkUfkklISTNrtm
         xMMEOZtblk2cV69IFu/Rp78ed+uc93IPb+P6M/vl/AL5k9G+uHkdrGAlNOeBb9d5Yi7u
         j5DAjm55B9Z+uUtJLUoCdybIFYce0yY3MFo7b9tLTKvOzwc9bedwhBSpBzN7z67maqx3
         o2kcctGz+aOY8Py3h4zm287L1UEo5aY/Mn7F+D0YvuuQDhVVdpJ5PKqxYNHfZlJW2oBE
         abrd+ltgcnBpOjNJ2BLbdfZ8pQXqLNW8GZkruGT0QZTXtYPReWA/7bEsy/SVwSmv2OXI
         ZFAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=L1uONpGDmWH8hJ78tZonSbBKbM+YapX3MmBQUFwZPLU=;
        b=TDreJs7z0MRRCejLlRXx3ii00CAh51F35tDTk5PlbqchXkajYCVDhsbZ0+f8ai9RJ9
         pHG1Knt3Ff67iGa+GdIBipOfphtzYXaAJH78byX/JWVCPXF+/h9EBIUkeZ0xyeDCTy4C
         Dr5wFhUz/NMq0yRpqEUIOUdHmqJ93gq+RTaknpaqzZ6AOiV76i0PJCQRgL8XBqRrSJUa
         zv0/fPfSL9ELYaLBUpQ50DmEUBe9tx1BEzVdfnxmGDH6JEEePOZShmNP7WxJml1WE8jQ
         QeE0/2U5Zjhffp8FkUChZ4TzEuOpdDAHYr1+tT9fzu+ju83W3nnBSgSTDLqAzeJs1kdE
         hxgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1uONpGDmWH8hJ78tZonSbBKbM+YapX3MmBQUFwZPLU=;
        b=M8AXx1xtJcFP2944cOBDebameOk4syE9+iomKa8BQ1EZYrPX2xCJmD5K4XXj6tMpj/
         MDN4HsHVx04IBPLQ/R/ePYApLO4AcEjpRHixDkSr4Oz54c/OvTGOaZDwtZJ2gDSZSzRR
         JusIvW4dBUSUNn/qb4zIv3u8899Od3DTZ28LI0t0snlJrqWVwrfsISrZxbLbq1t3UuKY
         RMRsX8WXYcm4vdL61SBiWa0xTuH/Ohb8eehzOcv8YEW/JLdUSI4tJLC+3jomSIRTZWp+
         qnLiyMSgr0+fZ3dADyvqaNN10XMNpww4TGfjUam9xl2KORiSRXNcNsKT87cBk7XKt3bn
         rBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1uONpGDmWH8hJ78tZonSbBKbM+YapX3MmBQUFwZPLU=;
        b=uW5lOl40XGC0b1KRzn9OA1MPCtgxHWdYSdpLxyn4DN4Fas+RHLisuGVYIgAMJsYKbe
         RXUJzPAgQ8hmgKfmekQkMCTF8RDIX2eG6y51LJUpxNSYXuey/+f6HvkPDSxQkVjL0WpM
         v+QsDM85QypAxj65VfuGrbkLtP/oL1vOwdKdotlUt9w5kWNjOmdn6Cneqt7SJmnHxvW4
         dMkJCMsYDKIYtx1v6GujQTngPvBD/j0+smv/grXfYWJpc8O7s+XpWgeOVKLIGPCi2Acl
         FfWck+2Ko0nxO1uKFKIzx7eL4k6BmYbSVOlAhI8URGKXPpaeVkq29J7Qdv0wR7QnnDIK
         DpoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5301pccwTroCKNKoPg29ftvcvU5GVJZgNLSiJd2uQnwt0Njy037O
	5kuwZgL3pCJXeInfUsRWxkQ=
X-Google-Smtp-Source: ABdhPJyt95KnmwgUOycDriCS2L+hj/vtwciYGFulo7hQoIaU1EId2ohGwZ3rfsBpeIFGFRXLdPtAtA==
X-Received: by 2002:a2e:7813:: with SMTP id t19mr10386036ljc.255.1597810936425;
        Tue, 18 Aug 2020 21:22:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls485893ljs.10.gmail; Tue, 18 Aug
 2020 21:22:15 -0700 (PDT)
X-Received: by 2002:a2e:920c:: with SMTP id k12mr11831604ljg.29.1597810935803;
        Tue, 18 Aug 2020 21:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597810935; cv=none;
        d=google.com; s=arc-20160816;
        b=IQ+S7MqGPxsWWw/pd39ohy3y3ysidiPZlkpqdS83wLIuMfrC1fbdS+UyC7JVrbcFNm
         dkcGqO/REPiQdUO9toDNhgEgNVNKKm8rNZnj5o4DUT7Hipw4qqQI6roy0uQT881qKup0
         kVLqlwqn2uChztnJQef3IubzNlGj9icVgZsYptv63Beh02MkWdpdCjJwOhpCH8ivGAXQ
         qApHCTW80UQ6h2vtekPsU56ZeLFJ8MQ1uxUzVmexk5gaIgWaSfIRhV220dgghxlqAkSl
         5oXAsGfQYp08Pz2BKs1HJNnv6OyvOVOvxXEhFk1xWDwQf/+keRCFVCz89UfrkEvYL5S2
         WEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=qAibQEaIVirjRXYYKgNdHYCnNmO38hKp3EoEO2C/T6U=;
        b=gLd/0cxF0RRkU0AJITa6Hc4mjk0nrRsqQbq2FJMW0dKcesxeR/ip+Hl7deR9lFTi9q
         fnv8ky1A57IfAuzCch5Ieih5accYAxNW6gRwzsH2rYLjQAd08KpXrlNyodTBCMq81DpR
         DZy46ZPMnxvHkZ5Cb3yE/NzJ4Pw4nP/KGl8+JFfulhaSUcrj6tfQeuHxoiZJnD4K1qkq
         6XdAuiGa9R1cUhEfOrtv7MSokEd66u967a78DSuie6KEi+G1o80jkq9zr+Sw9pGNsZrw
         Phgr4dYoWlrE9BZk+xh5lS15z4N1JtDS4kI4FzuVQkti/X6zZ1G1sVOhdiuUEfWUrzUm
         NDgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id 69si939758lfa.3.2020.08.18.21.22.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 21:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 2DEBAB7E7;
	Wed, 19 Aug 2020 04:22:41 +0000 (UTC)
Subject: Re: [PATCH v7 1/6] net: introduce helper sendpage_ok() in
 include/linux/net.h
To: Christoph Hellwig <hch@lst.de>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, Hannes Reinecke <hare@suse.de>,
 Jan Kara <jack@suse.com>, Jens Axboe <axboe@kernel.dk>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
 stable@vger.kernel.org
References: <20200818131227.37020-1-colyli@suse.de>
 <20200818131227.37020-2-colyli@suse.de> <20200818162404.GA27196@lst.de>
 <217ec0ec-3c5a-a8ed-27d9-c634f0b9a045@suse.de>
 <20200818194930.GA31966@lst.de>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <04408ff6-f765-8f3e-ead9-aec55043e469@suse.de>
Date: Wed, 19 Aug 2020 12:22:05 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200818194930.GA31966@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/8/19 03:49, Christoph Hellwig wrote:
> On Wed, Aug 19, 2020 at 12:33:37AM +0800, Coly Li wrote:
>> On 2020/8/19 00:24, Christoph Hellwig wrote:
>>> I think we should go for something simple like this instead:
>>
>> This idea is fine to me. Should a warning message be through here? IMHO
>> the driver still sends an improper page in, fix it in silence is too
>> kind or over nice to the buggy driver(s).
> 
> I don't think a warning is a good idea.  An API that does the right
> thing underneath and doesn't require boiler plate code in most callers
> is the right API.
> 

Then I don't have more comment.

Thanks.

Coly Li

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/04408ff6-f765-8f3e-ead9-aec55043e469%40suse.de.
