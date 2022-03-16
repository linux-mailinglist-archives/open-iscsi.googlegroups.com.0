Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBRWPY2IQMGQEWDUGMWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB4E4DAD22
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Mar 2022 10:03:05 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id r26-20020a05683001da00b005b236c8eb6csf835607ota.21
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Mar 2022 02:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647421384; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJYRLYReQsRRXcd+pjKJsk/QWCNESFAjYAncC0pj09BUK5EDmIaQbi30ftQhJubCrI
         vWMc/pKL+1NpalQU8nm+KzYzkgQ5atubKHGjbBy7LrbsBbFy1702+jEmilLutXhrAsOP
         yWY9pKbX9ZmysDqUmQtmxXpddF88LZf+Pumb+KrT+qn0G2Z+oCFmkOStpD/PhQNzAPNa
         IqdQxjZg3zSDXYkuPxzZWvXFfjzp0kgJ1dc1uwmdqW13ZER/pTkKMSFaPj3Pemb3dNN/
         166QLyqCmvU4Mu2PdKA1aFSDdIcIZproinweXnCq/sI/1pcB0e5EQlbFTPbwTjD/5CR1
         B5RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=Hjr6q4TJtzmbmrC61BS/PA5RhG5B0CK655oacEUvW1g=;
        b=C53Q06yGrqCSXFwV9zINvcIo7oYv4ze86nQlYBytGIYwD+AaL9swq1iX+n3gLvtnGG
         76aWFWDFgcj1Elm1jlFL3EF7h44cxuuWX9oba3P6ZK8a3WtSahwpqJRDObpLHo39hCyk
         D7+tAoTtadN0E3QOL5jK3xGHZNnZ5lo//x2tjt0SvepQ/Uqqh2NR/4SoB+UjfKLfPWN5
         5E1cBrOuvHHgrVvLApKS0W5PpXeZ1Vkc2jMZGjcpO1gY+U+8keK8lMr6OzD00bISMqhd
         skI5WDCpSt8oIIBwfT34ghKUNHwbrBS7t5mNU3i57Y3dIQK5fMQ274lygI36A+WZw7ML
         pDNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hjr6q4TJtzmbmrC61BS/PA5RhG5B0CK655oacEUvW1g=;
        b=QTa76zeyoGqs+Xu41ocKP1XyHxAw/r37q5vROdN+EPP3gpKCafrsyc+6dafv4u2S9K
         ygtXA6zVcQoG+Gib7t1NPoj0lnS/2lMsmtDTUmNJbwkusKjkAcvLRWczpREmCIZu4+OF
         3BTfkyNZCbJoGKLDDULDmXSq5LumYo36rwcFYnvfl7um6DvN1IXs8++zsugnifpYVY9S
         KZVPxXP0rMMroiVsATlGs4mV2k7o0xCGrdZlh3XJWtboUzjNXKl3ZHvuQNjNqMZ1EmZq
         BBYSVEVhG/0WEHoJcG862M0DLmOrCA0pNyBgsSLrX2b16g3vsw0S2WQMItIMNj30s1Ae
         6KtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hjr6q4TJtzmbmrC61BS/PA5RhG5B0CK655oacEUvW1g=;
        b=aCSagCnIKV5D7COeFK9NcyfBF1N7wi2VCuRscX1C3sksuRIq/N9JzFIBkmEliybpHG
         DjdfjBGWyrnS5n/5jZT1wUvfQmyJ52ELneZF0XWT9+DllWHWEKYL/OZ8GM1MUForowpl
         a33whyHChYt1wR65d7V03ya+AWKD/ydXBFu9hRaLV0X0fDM/vr42t5r851vd3HKDTAUc
         vymYxP87mJyf/yGGyfa1U6olmr1N2BFyL8NdRxfVljEZKy69BnWRR1DSdvAEPt8a81DH
         59iDwjub/oNQHDKgCMHF6SkGVM/I8fyqSOY9wtK1u/hRuFSPfIMnXGFKGVpAI9tl8Ugv
         oe5Q==
X-Gm-Message-State: AOAM530Pve+TV5t2nsjsEPxJ+HhSpfHTO7JK6WU8EZ+83vgzk1BIxCGw
	ajX5WdjyLUCS/xQwQk58bQw=
X-Google-Smtp-Source: ABdhPJwDQtTMFZYwgEk7K8AOXv03SmvUpMBv3hYXVLfZZc1tMT0Ftf57+Pp5MRNnbYMMXXC0rjpIfw==
X-Received: by 2002:a9d:68cd:0:b0:5b2:361a:1f6c with SMTP id i13-20020a9d68cd000000b005b2361a1f6cmr13184569oto.7.1647421383925;
        Wed, 16 Mar 2022 02:03:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:2097:b0:2ec:9f68:9a20 with SMTP id
 s23-20020a056808209700b002ec9f689a20ls552597oiw.2.gmail; Wed, 16 Mar 2022
 02:03:02 -0700 (PDT)
X-Received: by 2002:a05:6808:1782:b0:2d9:dad1:9058 with SMTP id bg2-20020a056808178200b002d9dad19058mr3511549oib.50.1647421382169;
        Wed, 16 Mar 2022 02:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647421382; cv=none;
        d=google.com; s=arc-20160816;
        b=c1ntIRqKIb/6baS3UAJ3REyASehjn/YkIvSbWGk2sGjt47O4QdzZD0S4Yi+b6P7v96
         vfR7fGYPj7UseOpGguX2FAnB0hGfH5hl6KsCI8ug5ZXw3+gTfdHsNFJDWj4DItjvfvAH
         JRBFKHkkbO2QVPEjTBlwjpBYuNrLCqN6RqRAxSoDfO6meQHx7v65H1S3jh194TJa++4L
         6i+ovzq+IssRrzKVrqaSh8iWqV/fWJiLKwX0Nlj0FyekJDAlcT7vju2bwpEuKHovhGuY
         3Mln1R8nt8WTA62TC26r1JnyguvNOxejbPl2zUZMCCC1T/yf2YnExpqieE2wEXLEyGLv
         EULA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7Wg1YlPoHua/JpprtNwgx1zS2rhiE4YkZojpKkD+GOo=;
        b=S48ipi7ccR3Pd+9Rd99ZsJGKt2bAyeHDpnbxWcIPyLUd3Vg1Rs7RRFLwdNnnIAyJrP
         OlTXfjlQSuEPCH5OJOo4aUiVg8sNlzmAbotXGNlVfJp3cJQPSqlIjzDAcUofsXaY0Fq0
         +xLSrqaVq6MD2vsF1y69ktwYSBIeigw/khAxoFAmbBkDFmUodDuOVlHn08B7sEUk7XgQ
         sJBBvVg4Hn783rtryh5UXE2rQkEWA7hIYhLhD0onRPRLkTogePcrmMxRHxAlyQ8sPfGf
         yE7iEV7nS6+tHlvjzSvK3TbcazzfIQ4P0azInHRgNH96fbytQGH198h3kqjBAVTLwNqR
         4Luw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id u75-20020acaab4e000000b002d9e166b703si169837oie.0.2022.03.16.02.03.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2022 02:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KJPQ16XdJzCqp7;
	Wed, 16 Mar 2022 17:00:57 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 16 Mar 2022 17:02:59 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 16 Mar 2022 17:02:58 +0800
Subject: Re: [PATCH] scsi:libiscsi: remove unnecessary memset in
 iscsi_conn_setup
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E .
 J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Mike Christie <michael.christie@oracle.com>
CC: Wu Bo <wubo40@huawei.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Zhiqiang Liu
	<liuzhiqiang26@huawei.com>, Feilong Lin <linfeilong@huawei.com>
References: <20220316220936.191013-1-haowenchao@huawei.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <44860f67-e626-411e-5ee6-9055ea2d5723@huawei.com>
Date: Wed, 16 Mar 2022 17:02:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <20220316220936.191013-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
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

cc open-iscsi@googlegroups.com linux-scsi@vger.kernel.org

On 2022/3/17 6:09, Wenchao Hao wrote:
> iscsi_cls_conn is alloced by kzalloc(), the whole iscsi_cls_conn is
> zero filled already including the dd_data. So it is unnecessary to
> call memset again.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Reviewed-by: Wu Bo <wubo40@huawei.com>
> ---
>   drivers/scsi/libiscsi.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index d09926e6c8a8..cf4211c6500d 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3045,7 +3045,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
>   	if (!cls_conn)
>   		return NULL;
>   	conn = cls_conn->dd_data;
> -	memset(conn, 0, sizeof(*conn) + dd_size);
>   
>   	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
>   	conn->session = session;
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/44860f67-e626-411e-5ee6-9055ea2d5723%40huawei.com.
