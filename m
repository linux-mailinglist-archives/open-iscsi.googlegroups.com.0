Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBC4XVSIQMGQE5PKBLVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC14D5DA7
	for <lists+open-iscsi@lfdr.de>; Fri, 11 Mar 2022 09:42:54 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id lt6-20020a17090b354600b001bf5a121802sf4886998pjb.1
        for <lists+open-iscsi@lfdr.de>; Fri, 11 Mar 2022 00:42:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646988173; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pty0ncNbRTFjvY79ItOCSfNw3m2ykIfQNwanwOHRhU4bOX7eV2E3iA1hS6OlSrx1Tp
         Ub67j2hE1CR+6WROrWc9R4TdLvwL9a5jNzJ27KDKXd1jwvHQLB+CXx547JwOuzKRdSgP
         lvc1CBIZKVs8+QVu6VJJEUwgCheeSoeruCH9AGCwPVCldhSiWkP8TjGBUbAtqcKtoDEu
         Tcj5noeSeV23h2hubK7571+fgsajEf59leSgkb6gfE6Sy/L259SI4p8LUPmXNt6wWEYV
         m4jNO4dxrX7dgia0qjLwEPakf01ZBn73TKQ/hGsTFlW9eX0zsY7qfIHt3nPasOM9+zq0
         pw/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=8+2zbSOZl+ypQrQ18fY7nDU5WO3/OR014O8XBdxYpd4=;
        b=vaebne9L/o5s3Evlilcp/x5zSBNyu5a3lYhrPJRvxlVCz4XtquK+ciQZG547RAZ5Fu
         3qQxnp7c43AU5i9v0dZrBdiOXRahDax6EuQjkrFILUTzCtHH7gOwyZkAULfJSRcAX6fI
         WuU+L9Fwk/d7B7vUIayvl9g0YE5CXQ50+lq9S6oGDjQfoteyqynaGWR9GtnEeVr5DF0q
         VThGWIsqrmCYKZ4s1ddpdXp1PmGnuZwQTdkYpviFJP2Ek598jMHyfJcMxUYJkEDUDNq0
         TktTIYWOYDe/tDM8hAjDKN0WbFQB500ZvLwh9nXQol/5uX6H1TNMeU0O+UDK20N9KkQv
         xP7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8+2zbSOZl+ypQrQ18fY7nDU5WO3/OR014O8XBdxYpd4=;
        b=ItKBYCUH8/1PeGk9Ua2g8ODjbnOyPiZlR0wkBiOeb4TmpbX5VkfQMb2oxqnnKUAh6h
         cI2bikhUxlk6p20baKDIr2m1tmeeDD1d8bVySuSlzeePdqUP/wwS6GMU7dmUPUq1nBmE
         skvXA1+7M7P/qqvksjlcZN3165leq4MswpvU6+qO066IsJVkuPUuNVwDFJxH8guVQ6Aq
         ymfmMZrDu9eZpcUBM55DyYDq3zF5gWe0S6Xsd2bnC5DZU3Dm2B1JkQ+h3YYnpc7BKUy6
         eOdfkGHV7L2gQz2F+4LFL1H8nqTapWHSeFRrXqeXyp3G/VFgxxyy2f6lvXswMlIEW2b1
         etig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8+2zbSOZl+ypQrQ18fY7nDU5WO3/OR014O8XBdxYpd4=;
        b=v+daNPBpTRFr1fLPapswXMnVE/wk5618U2eWs2v1329GwyorvzdQ0Bem/KSWfja2dL
         ouu43J4w/lRfYygpyf7MwFBeXYW9dAVryXpsQkRyJNpOU0lhyXKLSMzrvTvinom0uEys
         gpL9olh7nEgfzm0fWzGoUB0PGpCt/WsWh2rQuuP/XJxtSHMwnvLHHcod8RlUKBoo/1CY
         r2ZUmXKYSC5E4vgDwxLv9laXRk4TzmdKlZg6Li1mO2WwabCiTHJLlBI8B8y8dqUeDznN
         NcOMslTOJyuqfb1Tqw72uyPLWWxe2nhSsTqIb9BSmq3qqhDAE3cF3rwyAiAaJMj1TvlB
         KQfQ==
X-Gm-Message-State: AOAM533ahpOqUVTXIO5lDrKTamRYAgbfc/xT40zBfmvgCXoauU6g90Qw
	KpHEi+/gaVE/En2+UN+5e34=
X-Google-Smtp-Source: ABdhPJxSV6kl0USxQcEE9Q4rMaH4Y0AgWPfzeBgxC07goofu9d5GmOZbKjH/IE+osPR8ep73ke/eqQ==
X-Received: by 2002:a65:4143:0:b0:375:89f4:b46a with SMTP id x3-20020a654143000000b0037589f4b46amr7393970pgp.335.1646988172958;
        Fri, 11 Mar 2022 00:42:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:51c6:0:b0:35d:7dd7:485f with SMTP id i6-20020a6551c6000000b0035d7dd7485fls321800pgq.6.gmail;
 Fri, 11 Mar 2022 00:42:50 -0800 (PST)
X-Received: by 2002:a62:1d91:0:b0:4f6:f558:6d15 with SMTP id d139-20020a621d91000000b004f6f5586d15mr9110858pfd.79.1646988170491;
        Fri, 11 Mar 2022 00:42:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646988170; cv=none;
        d=google.com; s=arc-20160816;
        b=JUjVq/tVkyJYRBKV+pmDV44Mxi1OT1bBXwFpZG4WVj6iFz6qV0O/4mbP7kNB/368za
         Rllskz7LaZ2C8cloF0qYAQVR/xXFZ1jrzCPyNgqER52Pj1gjFpyBZA3mvjbLP9zqNSxC
         SaPa2FQz99wrhVbAGzfvDSYRkrJetZy03Dk1aKn4Fe1wqmKUk5oIEVWYKf1V7Qs7M/pd
         DOAxg0JV1HHTX3pXEgkhYk11nz6Um2Vgo19XEH2UC8zwECD1ACZ9C9B7iVOqHhllGMtw
         w45fJWTkpfr7Mc4+gpRmgVtOC1GhFzY/EYbAjFokBmLlSsRFtO1NNWSLJ1aDZsC0WQ9H
         q38Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=tt9mthjFDNRDq3Lprhwk4FA1euBLR29ZLFIx3uq07AI=;
        b=VVz94q3C5eiWEE23an2y50xUw3O75hk2hGv7+eV+yNS+keE18bu7V1DvmST9YNs6Fr
         cI+bf/YJljrxtpUuGdI9Pu0hF++GewSnY2tpNgPjKzoTgJSN1wIhGOt+XxfmwC/g4pbV
         x7W7Uy+NBGwAbXWqvKvj8vOTeEibV8Cjih+Dl3CJA6dgUx/bCU0sLY6OVCPBJ94WyBK7
         Qo6NDZXQ9pBcySa6ccbjDZJBN+z38YFctmrcHFeo9PprDkvw0VGaVDlhFRH7dyEyTZfK
         /KOJAiq9UdJ9sKwcxLc6kBehzZ4JNv39NZNzt4sSfezkFZqAtyZCMvQyFE3j34G4OIxQ
         oB2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id h20-20020a17090aa89400b001c44f9fcad5si95878pjq.3.2022.03.11.00.42.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2022 00:42:50 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KFKCm4pgwzfYkZ;
	Fri, 11 Mar 2022 16:41:24 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 16:42:48 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 16:42:48 +0800
Subject: Re: [PATCH v3 0/3] scsi:iscsi: handle iscsi_cls_conn device with
 sysfs correctly
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20220310015759.3296841-1-haowenchao@huawei.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <069ed5a6-0cba-195f-bab3-391514c55a97@huawei.com>
Date: Fri, 11 Mar 2022 16:42:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <20220310015759.3296841-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
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

On 2022/3/10 9:57, Wenchao Hao wrote:
> We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
> the root reason is we did sysfs addition wrong.
> 
> The origin implement do device setup in iscsi_create_conn() which
> bind the alloc/init and add in one function; do device teardown in
> iscsi_destroy_conn() which bind remove and free in one function.
> 
> This implement makes it impossible to initialize resources of device
> before add it to sysfs during setup.
> 
> So this patchset splict both the setup and teradown of iscsi_cls_conn to
> 2 steps.
> 
> For setup flow, we should call iscsi_alloc_conn() and initialize some
> resources, then call iscsi_add_conn().
> 
> For teradown flow, we should call iscsi_remove_conn() to remove device
> and free resources which related to iscsi_cls_conn, then call
> iscsi_put_conn() to free iscsi_cls_conn.
> 

Friendly ping...

> V2 -> V3:
>    * Fix some bugs and optimization the code implement.
> 
> V1 -> V2:
>    * add two more iscsi_free_conn() and iscsi_remove_conn() than V1
>    * change the teardown flow of iscsi_cls_conn
> 
> Wenchao Hao (3):
>    scsi: iscsi: Add helper functions to manage iscsi_cls_conn
>    scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
>    scsi:libiscsi: teradown iscsi_cls_conn gracefully
> 
>   drivers/scsi/libiscsi.c             | 23 +++++---
>   drivers/scsi/scsi_transport_iscsi.c | 90 +++++++++++++++--------------
>   include/scsi/scsi_transport_iscsi.h |  5 +-
>   3 files changed, 66 insertions(+), 52 deletions(-)
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/069ed5a6-0cba-195f-bab3-391514c55a97%40huawei.com.
