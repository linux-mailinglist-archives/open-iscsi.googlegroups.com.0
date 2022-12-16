Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBCFT6GOAMGQEN2ZKEMA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAEE64EAC9
	for <lists+open-iscsi@lfdr.de>; Fri, 16 Dec 2022 12:42:04 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id cp23-20020a056a00349700b005775c52dbcesf1423801pfb.21
        for <lists+open-iscsi@lfdr.de>; Fri, 16 Dec 2022 03:42:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671190922; cv=pass;
        d=google.com; s=arc-20160816;
        b=l8oxHfHl/JULCkATmd35BKrIK1Mh0VvlQ65p+7W7zhOxqQYK0pQeGotP9yrsGHyuDO
         nIf6ZkBo/ArC8AcoufP7AZAjE3FM3WJWJCkfj7huBSzAlYZcdAbaQLKCiBoHhPeR05Fb
         9FUc3P7FdtD8Be7Ew0xEDKmymM6spbThLpo7Z0sdpRPlY0d0dyxM2vcAJd4sNlxjdIrw
         /ZhDGJ8iLeN3Ad5ZC3fJ3DaQoOrErQaKOssLd3kmzelimaYZ508Q051IEVM5EYCany8Z
         8bRkruLpvRPxug3n32oJXkfOLvtSohpmGbX2np2yLz0e1aTewft2u3EPpfqBwGw/0YRN
         xN9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=cXqG9uiTkMVFZZIpt3/eBJkn7XzRPMOqIDIwK4MmIAY=;
        b=HaXD1o43zQ1q2kDGOaxHh3cX3Ygb3HvA1Hh6CuaPRsmRch3m/DvYlC2CU+HDrinbZZ
         IwNgHE8E8nqmnPllqa57P6inF+OSQcVW8wBkMgO4b/Wx4WXx7F5czmfr2BZ01/552dpl
         /5qMDxoM9EG4NaHKmNx7FqWJ3rW6cRfBNeybk7h9SC959zFxyplP5CLVyUoA21+6JJIY
         KfF/cxfGFOtyP93ZIP0WpXfJrCKU01ZitMsKivfEW/sMQz1VLt6ZFMt03OH7ZF/LMb/N
         rGdrZao/LjlRSQV5wn8e8/5aVvaWvn2zD9wSoENjdL5hQXjsyuWxWvZl8CygQG6zpJuh
         TjXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cXqG9uiTkMVFZZIpt3/eBJkn7XzRPMOqIDIwK4MmIAY=;
        b=QBTgxpPr1FWuja6TyAcmAq08xa2HYl+MElYn0SszN9bQJuM/mScU4+skC3GqnJifFt
         aedScFybDM76V4r6bPbaK981642Z3gvnczrW1Nwy3IasF87eJKR3xqKDxj4PwCBSNZ7C
         JLJp7HK2G7RnyrByruaqGya80lYHyH2Ib7ZNG+8Ze/MYsJEc/hrswskkxv9L2u/6UBxm
         ZqGjtafGZ60MFdFz9rer7tSbY8/0a7SrJZpQ8QBQjqlSGkO/5ty1GIn7V5B6Gydg5W2h
         akgA3iVgruZIQF0MLXN7QGpJHizFJErJL0ibV7DJSW64gVPHrsGfPcz6HtLE3htIyaj2
         0xuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cXqG9uiTkMVFZZIpt3/eBJkn7XzRPMOqIDIwK4MmIAY=;
        b=PEekhO+IBmpljy/YQP9TbWE7hWqj+gjB/QG8xPc2bn+6VgBGrIwjeEE3mOMXRcyoeX
         q5aW8WBvW5moxrvTcRODOoBsNoiyxY9/T0yP7r+ypBlfUPrcCBcHyQkaB4nzXdncUa8m
         7GxBFibjbDX2K50T5Lt+SNeorlTSpG/bDnhqqc8hhwLysDLOEG0a9kKUi7Y/YhQQh1we
         hrPzDbjRXEqhJUmHKSHqYKNHPoAY4/oqdB/23FsJFq9JAL0FgmdelqSFqsXX/uDncyRT
         cwdbYqIgTFVrf6BEk0w6GkN5dAB9zRw25YZpsbgCXRLPhsa2L7ZsRnYYmMMzK6wxPXVq
         +7KQ==
X-Gm-Message-State: AFqh2krzMb/xFpG9I3of9ltIyEWqIFG0hnQj7IWKpjmzOxiePRBgbjNJ
	XX7ucAEicJnJ67nDobaCuRA=
X-Google-Smtp-Source: AMrXdXvql2dFw+ymfhLPbyXnbQpHrKkL0+JbXdO48NCnn3Z2cycIqrIMjFuhFQVjGWqHFFi5Vwnjmw==
X-Received: by 2002:a17:90b:303:b0:21a:1dad:b9d6 with SMTP id ay3-20020a17090b030300b0021a1dadb9d6mr741140pjb.81.1671190922142;
        Fri, 16 Dec 2022 03:42:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:1d0:b0:17a:6fa:2290 with SMTP id e16-20020a17090301d000b0017a06fa2290ls2496698plh.3.-pod-prod-gmail;
 Fri, 16 Dec 2022 03:42:00 -0800 (PST)
X-Received: by 2002:a17:902:9896:b0:189:78d9:fe40 with SMTP id s22-20020a170902989600b0018978d9fe40mr31085062plp.60.1671190920083;
        Fri, 16 Dec 2022 03:42:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671190920; cv=none;
        d=google.com; s=arc-20160816;
        b=uJkzDp6BFwwqxqBDmx53bHaidPB7Tq9ht5tHlztekewNT2aCRzjoUYaVKv6SiJQo95
         h2b5Zu4bQUVg0A112hvv5BQBpRY66My1O/q/HMmmsxpJZs3+xeyo/IkHqvMizXC530j8
         86A4IWINPKHQ15L8bJUT0TzpeUSqWs8xclpA4j3+UPjwpiFr0Xs1FgheNNPvtsxfg7tC
         wiqvOPBuGRHAWiTtoR0DMuMvMuw42ucBDI6XDtnLgRTcG69fvXSeRZ+e9C9zuPvSbbnT
         0x5BD+VaKvJujEclWHYIH93dDeFDtKmPNqMz9ZzQwHkj16xtLOPWTvFgYrGZDX9zK2KV
         t4DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=I/aCogAMFa+PmnQwtYDa7qA4mvp1/MrbZ5TXaSOs5sc=;
        b=G+hykgb+HC0K+y0UDqxlY0qcwHBoEuhMrE7htl+TDgjcKeGnKXJfe/OHMAE6ynNFPd
         ts0l/pnNLll+Gi/lDDKMs0R1j/rnyYw3j2fWRVevPKXJZ51kyb7qQtyaNWTnXrkPtxwi
         gngpgjkTx7QFRqcI937viUsNwU6/c7mh0FINwrTnzoE4B1Q+RVJSxZgeeiwouBNm3Cyt
         TZV8ers16twp6MkuNm6/3Q7jeIg2umZTRLbk1kPMS9abJTuSvueX3BGrHpegqhZwiTuq
         D7OUszxMua+lHuE4Z/ktfSxpzcdl3+9TDlruaoFMKiZtSN0ZDWFv9hqaKSozHKqODCoR
         nMdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id t9-20020a170902e84900b00178112d1196si156067plg.4.2022.12.16.03.41.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:42:00 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NYRx34f2jzRq5n;
	Fri, 16 Dec 2022 19:40:23 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Fri, 16 Dec 2022 19:41:27 +0800
Message-ID: <5129c84b-38e5-8be4-6411-fcc003776d70@huawei.com>
Date: Fri, 16 Dec 2022 19:41:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 0/2] scsi:donot skip lun if inquiry returns PQ=1 for all
 hosts
Content-Language: en-US
To: Christoph Hellwig <hch@infradead.org>
CC: "Martin K . Petersen" <martin.petersen@oracle.com>, Mike Christie
	<michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<liuzhiqiang26@huawei.com>, <linfeilong@huawei.com>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <Y5rHX95Vvl1aLhbp@infradead.org>
 <57c12317-c229-8cbe-b3d2-d799ea5f554c@huawei.com>
 <Y5waet8RoXKQHDR7@infradead.org>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <Y5waet8RoXKQHDR7@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml500015.china.huawei.com (7.185.36.226) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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


On 2022/12/16 15:12, Christoph Hellwig wrote:
> On Thu, Dec 15, 2022 at 05:09:31PM +0800, Wenchao Hao wrote:
>> In my opinion, if the addressed lun still response the
>> inquiry and other commands, we should not skip it,
>> maybe let the scsi drivers like sd/st/sg to determine
>> how to handle this lun accordint to the PQ value.
>>
>> As discussed in following mail, another drivers would
>> be broken too.
> 
> So why do you force a specific behavior for iSCSI?
> .

For nothing, I want the iscsi_tcp transport do not skip PQ=1 default
as what it did before commit 948e922fc4461 ("scsi: core: map PQ=1,
PDT=other values to SCSI_SCAN_TARGET_PRESENT").

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5129c84b-38e5-8be4-6411-fcc003776d70%40huawei.com.
