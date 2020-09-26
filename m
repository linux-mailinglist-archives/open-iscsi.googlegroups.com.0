Return-Path: <open-iscsi+bncBDLPRE656MLBB3MDXX5QKGQEKIBV3MQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 708E62799A7
	for <lists+open-iscsi@lfdr.de>; Sat, 26 Sep 2020 15:28:14 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id w7sf2393371wrp.2
        for <lists+open-iscsi@lfdr.de>; Sat, 26 Sep 2020 06:28:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601126894; cv=pass;
        d=google.com; s=arc-20160816;
        b=cLz5obkG09oNupyXP5afmwVNOpZJ6uglSNgF4u7tkwj8km6BOJt8vo3S5bwFDhSNDC
         mLFOVvU1/rOPcUCH0dk0aozZl+R8UUZ7EJg9mILjZj+iYP18o5KhgvlDxyT8/GBBFI2d
         Mc/QkYRItRCrx/nzLAMa9fZ2WTAQThAdAsr3lRQ+O8Pi2X/gLMlemXNxfECPuHq6nmyq
         mSTyt2Mc2BCQkAHA2QahYQ5UMxTNg9eQW+5Vd7fJ6ygBOBBfqIQRtD83jYeNzqOWIao3
         At5rxbUcHer4vIl8sy/PDhfD5NnFI3GZRlWb6obPfkUVOyV0Z6afV0enSLum4K1gwdjg
         /zBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:subject
         :autocrypt:from:references:cc:to:sender:dkim-signature;
        bh=UtPD9xyaN1jtCMbJy0Lc3y0WsOspx0oXmlIqoVAgeqk=;
        b=x4yc65HutXkqWG9U6p4tzcJzVj2u8CqaeZ/BI4Z1UFnAq85Ip64Nte7QyZKYO0uyp4
         TtYc+bUagcn26FVghTxipuYUwNWrKh5zeQy32Dj0yuoJBbFru+yT0QAsAnBez7dvYGLH
         u/ab6Vrvfbv1OyCOmnarl3phceHOEvlseLw4wTwD1Iz65C+g3mDFoJhj27UiP12F19NP
         jIa5Y4ArbhebKkhBYMk5eenIHU06cs6Z40qlA67vqgEsBxCy2RT801YIiNx76wPWUVvl
         VFsUJPZnsvhA1xKG7nMmA7+GltXL3RehMoaTqbdY8ou9STGfNekdPjEPqQzroxyidese
         /u6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UtPD9xyaN1jtCMbJy0Lc3y0WsOspx0oXmlIqoVAgeqk=;
        b=UobKcXCBr+q58Alhsn+QHKFJbyWGlZCK50i/iV2iuVeOpTugaOwLcwKbp+s18RH9u2
         ToCILv2YEngmz+1/Cyj13qwgwwbfUQi9g4BfCOoSKW8xObN3NiYDhxdBnOrKmsbAeMs1
         24pLBHOv673Hn1omyYoiBrTwzmaqz6Y6XpSxENyAiTw2/ouJsNmo5WkD1jGmvwBOADxQ
         yz9+o4zITb6u9INu2k2JVNTvd3zv7OxOIZVZetBccjLdZULEOg5ktJ/yUFkdYJYfbl34
         H04RQukgfdwr8c0uJsVdnAaQY6o5+GC9aJQyaARXeMpLy7P6HFXijbRGH20C5fQqtZXN
         bvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UtPD9xyaN1jtCMbJy0Lc3y0WsOspx0oXmlIqoVAgeqk=;
        b=CgI+je25KYeQEMTTEUqPLS7puw1eDh9KgJpmJytdw1g81/toZHIBLtdlrCe4qG26ir
         2xV7i7OVyCN+mx31cOvK6BTw63e9yFN0IWmE7YemvbEPhHjI5Sy3BKmqBeVS2/hCxYbm
         KQ3cuAebt+k6CRfBUlCFi7DgtVbcHGhN7kXg/nf45PdRvuUEXg1FkCLxzxil23L0Am09
         0uyBoso/BUNNWcY1uX0qLm1HOhp3u82RN/R3vIM5UaIGWTyfXqYPGb9ohyB+MSp5UP11
         U977hlrkXLRqGp9N1/hGoj6Yt9k609Ool1FUadvlusT3KAydPXh1axIMUk27LzGbWNRF
         d7Hw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533MwOLQneQBvSQzCtI9p8BjjcjO453rxQPhvGqDF+fnGYc2DYXw
	vQFaMyI5/OMIydKzPCRbMgI=
X-Google-Smtp-Source: ABdhPJwKzEg9931Nl++f5qTZRrTN4gbxlkwh3qYzfofbAQXc+uHDDnzYPRE2KewSnKWp6wgJze31Nw==
X-Received: by 2002:a5d:4682:: with SMTP id u2mr10259938wrq.254.1601126894164;
        Sat, 26 Sep 2020 06:28:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls6670732wrx.3.gmail; Sat, 26
 Sep 2020 06:28:13 -0700 (PDT)
X-Received: by 2002:adf:df05:: with SMTP id y5mr10367409wrl.39.1601126893275;
        Sat, 26 Sep 2020 06:28:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601126893; cv=none;
        d=google.com; s=arc-20160816;
        b=lhRY1X82e/Iz1liagamx3VXUbsNloGvouDv/m+IK7XMOmBfBinewGnspwZe6Qs/dcA
         YDbhlbEKyYscw+yzKXv9aqHdA886GQj3ZbaFfKM0YajeRcpSz5hzdOujgbbYGEgrdh0c
         0V4NXJuOyWVgyw4PpQce8V2MRcqhAAeKwodFfFCMcf1EidhrGNQbPP/EuTOZO2AcmLrb
         wo+NYKK0YwVMXGgDeoCzzH8PsHMs7Hr2CnJYYyzj6xBps76U0gYX2Rbi7QoSDaISPY+g
         yC3j2JxzshmILTBGl8l9xKBNvVQtiT8eZ+ejjdvdvYuJEMdDKM2y7uHq0JWXdiqCbUT/
         ckMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to;
        bh=7QgVW1yhfjohTY/8XLzdDqnFLRu+38KAhG1c3fQr2H8=;
        b=rlHlCJJhZNfeIyubn2XXWHDOgyw3RzwC89G8aIkCXiCgKDMz3uaQ1looqyvwujWC2C
         4q7WUMqf1I4PoykzkMF+fKPkaIWBbBaBiTij4EvtqxVr9VhU+M3c7Ct0iFlQ6kjf9A5t
         3vtYqGATBJ+MBjRlLJgXhCggHd1PlAcDYaY+i7eTFdkoB1rfeFp7FyORuOb9NAQLRKoe
         cYls3GOG0sL1edZGK+EXHRmeboqt/+jER9BMbSdhexrRSCnNMRmc22ForniR3gCFxPL7
         oYbF56WBE7PVf+EmIMHLMU/BcBbdbm0lJKxEpQZP7hAg71ZDOD5N6WRf1fBtrWS/Bz96
         bC6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id w10si61126wma.1.2020.09.26.06.28.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Sep 2020 06:28:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id CAFBAACB7;
	Sat, 26 Sep 2020 13:28:12 +0000 (UTC)
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>, Jan Kara <jack@suse.com>,
 Jens Axboe <axboe@kernel.dk>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
 stable@vger.kernel.org
References: <20200925150119.112016-1-colyli@suse.de>
 <20200925150119.112016-2-colyli@suse.de> <20200925151812.GA3182427@kroah.com>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Subject: Re: [PATCH v8 1/7] net: introduce helper sendpage_ok() in
 include/linux/net.h
Message-ID: <7b0d4f63-2fe5-9032-3b88-97619d8c5081@suse.de>
Date: Sat, 26 Sep 2020 21:28:03 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925151812.GA3182427@kroah.com>
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

On 2020/9/25 23:18, Greg KH wrote:
> On Fri, Sep 25, 2020 at 11:01:13PM +0800, Coly Li wrote:
>> The original problem was from nvme-over-tcp code, who mistakenly uses
>> kernel_sendpage() to send pages allocated by __get_free_pages() without
>> __GFP_COMP flag. Such pages don't have refcount (page_count is 0) on
>> tail pages, sending them by kernel_sendpage() may trigger a kernel panic
>> from a corrupted kernel heap, because these pages are incorrectly freed
>> in network stack as page_count 0 pages.
>>
>> This patch introduces a helper sendpage_ok(), it returns true if the
>> checking page,
>> - is not slab page: PageSlab(page) is false.
>> - has page refcount: page_count(page) is not zero
>>
>> All drivers who want to send page to remote end by kernel_sendpage()
>> may use this helper to check whether the page is OK. If the helper does
>> not return true, the driver should try other non sendpage method (e.g.
>> sock_no_sendpage()) to handle the page.
>>
>> Signed-off-by: Coly Li <colyli@suse.de>
>> Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>> Cc: Christoph Hellwig <hch@lst.de>
>> Cc: Hannes Reinecke <hare@suse.de>
>> Cc: Jan Kara <jack@suse.com>
>> Cc: Jens Axboe <axboe@kernel.dk>
>> Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
>> Cc: Philipp Reisner <philipp.reisner@linbit.com>
>> Cc: Sagi Grimberg <sagi@grimberg.me>
>> Cc: Vlastimil Babka <vbabka@suse.com>
>> Cc: stable@vger.kernel.org
>> ---
>>  include/linux/net.h | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>
>> diff --git a/include/linux/net.h b/include/linux/net.h
>> index d48ff1180879..05db8690f67e 100644
>> --- a/include/linux/net.h
>> +++ b/include/linux/net.h
>> @@ -21,6 +21,7 @@
>>  #include <linux/rcupdate.h>
>>  #include <linux/once.h>
>>  #include <linux/fs.h>
>> +#include <linux/mm.h>
>>  #include <linux/sockptr.h>
>>  
>>  #include <uapi/linux/net.h>
>> @@ -286,6 +287,21 @@ do {									\
>>  #define net_get_random_once_wait(buf, nbytes)			\
>>  	get_random_once_wait((buf), (nbytes))
>>  
>> +/*
>> + * E.g. XFS meta- & log-data is in slab pages, or bcache meta
>> + * data pages, or other high order pages allocated by
>> + * __get_free_pages() without __GFP_COMP, which have a page_count
>> + * of 0 and/or have PageSlab() set. We cannot use send_page for
>> + * those, as that does get_page(); put_page(); and would cause
>> + * either a VM_BUG directly, or __page_cache_release a page that
>> + * would actually still be referenced by someone, leading to some
>> + * obscure delayed Oops somewhere else.
>> + */
>> +static inline bool sendpage_ok(struct page *page)
>> +{
>> +	return  !PageSlab(page) && page_count(page) >= 1;
> 
> Do you have one extra ' ' after "return" there?

It should be fixed in next version.

> 
> And this feels like a mm thing, why put it in net.h and not mm.h?

This check is specific for kernel_sendpage(), so I want to place it
closer to where kernel_sendpage() is declared.

And indeed there was similar discussion about why this helper is not in
mm code in v5 series. Christoph supported to place sendpage_ok() in
net.h, an uncompleted piece of his opinion was "It is not a mm bug, it
is a networking quirk."

Thanks.

Coly Li

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7b0d4f63-2fe5-9032-3b88-97619d8c5081%40suse.de.
