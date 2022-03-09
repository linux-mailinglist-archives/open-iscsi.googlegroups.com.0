Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB7ERUKIQMGQEILK3HCA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 121A44D2D97
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Mar 2022 12:01:19 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id n14-20020a4a848e000000b00320fa3f046csf1476241oog.23
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Mar 2022 03:01:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646823678; cv=pass;
        d=google.com; s=arc-20160816;
        b=jAixdcHz0yZ+hULgx8EmMBaM/+rJe2c+DO5V5VsEB828Zh7OolLSLfmLE1s4Qq16BE
         gyMVfH237hnz2kPlUrGAVGedRrcJ3n6VCPjfmS43RO93isp7QxCpNIq83HsJLM3LPphr
         BEDxPS2wGecmz3iKlTu0o7teN9UD4c4CybiDjvO2uIblb354Upjzk61jjQX4CiGLer14
         g69VqY1lp8oOVnFpiecc6Y7an2kJrfPR8mjAichaMeLb0B2nZA4pgLWLDpgQhamC2sqt
         HS1tAQsM0GRZtFX4w1vyQC5h6K4bi41OTQd+j6l9XnsQKDyiluqQ5RRfe7SV7L1cBYkC
         Tv/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=0+fmQnu8K3O3g7pJcJGgOs5YEXV3O2a/vh73jeqsThw=;
        b=BRzC0QzppCZuSWrZMKztwMZn3NeSrq2+CSxb92dULj2sGP+oRBPRlNaQOz8+Z6SsfI
         9B2cbBuQQ+niVFnWksRbMpxQvV87VQfGwMcWNdNkNPdF7DXkVYMRayiT6JhK2bh16cC9
         5hUC8q9yG9mquykOZd1cIjPA3d8uIpkDPUScV9X7hygmB8Km7kM2O3BHlbORw/+LInit
         eBH/exhFVE73nWp5Hugn4tnATOHI4gVxM7tMSbthIk2S/9ilId15cmqXRqTEay6fkaJe
         Odfw6o57n8RxuflwAsQjwjRr1UXzkeEmsDsX9OcGOo/SiNUeJuU2NL0ER8Rvwxl9Aadu
         GAAQ==
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
        bh=0+fmQnu8K3O3g7pJcJGgOs5YEXV3O2a/vh73jeqsThw=;
        b=Jwm7So1Rzp2H8NWYzvyuWWRD5lw3XSReryaUj9Z5fX2kSUPq2c4I+J/l2jSrNWpvyQ
         CKQvviw5WIe/ilbcvWXh6qqAwripZ9uUuKTp7IrjbEDPO6t6Sb6NtgN9rpgTJViKRm61
         DjnfZMYeAw5CUD9hDl5+QJAlwtwnr9f1PF19F7Nzrz3sCJuosTiwz3isvfM1n6PCcYHK
         glOUYjTTmSfKPSzUh+vRYHcVKNj9sQhz8/IhPOekTuSb9AJI8D3tNZvAW754MqnCQfnr
         hbLyZ51EgMWBSuQUaMlqMk3PID92lLUhnZZ9J3oJM6kKLYDlYNMiwDlEBWAyKq/37uQE
         HYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0+fmQnu8K3O3g7pJcJGgOs5YEXV3O2a/vh73jeqsThw=;
        b=CTf/cvxb+1QfAdB37nTW3VitU6Bm5gZwb11DEKw2yjC6hgD4Vb0jA0W6yGxX4MFWw6
         RsBovXyrd1Gyt8e0ENTWxSqUvZrGdjyNw5aQZ9VT3Y3gUSpj/iUiQaieC99Tl53DxisQ
         h8mNBLCUFBBRgkfXBL4prbHYn5aLF88UNNkuyyRpkPorPJnMkKu8mGpI2QQQI63ePoQP
         kb3gWCIzDr7dislGtAXo0jIsS6hg/hFpH13mLtR+rFmImdcDodugR5RkbG77X7hIqYtp
         Oz/+jSu9e0QbZAXVUw4VXpZ2fabJPzN8L8OYx3R1f2ZvKMiez79LWUjaVnOrIvNkEWjI
         fUIA==
X-Gm-Message-State: AOAM531vmR7zCCyRQXd5wrDB5J7qTPXKMOZQTH34xB8P+hpQNA2uI7Ip
	+0+2ipdukxtGBpAq0sbY2ow=
X-Google-Smtp-Source: ABdhPJxpH0UMIv/7mRrBf5Rg87QgQuxWha/K5ABRIS3KDu0oCMEozBzgtF/q7hj0T0XbpVEwJLYaAQ==
X-Received: by 2002:a05:6808:169f:b0:2d7:9bbd:ae82 with SMTP id bb31-20020a056808169f00b002d79bbdae82mr5390816oib.136.1646823677968;
        Wed, 09 Mar 2022 03:01:17 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:2456:b0:5af:5a9b:4f3 with SMTP id
 x22-20020a056830245600b005af5a9b04f3ls358714otr.2.gmail; Wed, 09 Mar 2022
 03:01:16 -0800 (PST)
X-Received: by 2002:a9d:6c93:0:b0:5b2:699a:5745 with SMTP id c19-20020a9d6c93000000b005b2699a5745mr464806otr.385.1646823676200;
        Wed, 09 Mar 2022 03:01:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646823676; cv=none;
        d=google.com; s=arc-20160816;
        b=Xhr0LM3EeJjUwa6BVEeUjXm3FlsnSYSbMKrZTBw+WcS71DwanGc67NDg46+B3KKnDy
         drK9VhgIBzr2VD1+q+IB6r3nh34DWtOwoeTrFjUdYn/OMCSvlX1AvRovv/t7hR42hu5M
         g1YHcy70IPXtg19hynSNOWSAHCa8XRHZA/CvS6KOk5PBlXe6XrxwMRY5Tkjbpui83WQ0
         zY9zbtoEhr5kPhztpv/LNxXQ/ela+0Z8cZYmTibHloVzyWWc4Jt9u2Esu34QZLEnphTt
         rhwTgYiedEqNARAsavJ3Yv0xssjjtIN2QJB4pMO/hCzyvYLUkWMOfpC1sZONugIoqfa7
         Y8Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ipNCagkOMAlWDHXFXCPocywlrmfTJGQbhrv/Y9rE6jI=;
        b=c9Z4Y+Ve1msIEqkSQNiKOQLwRBvZpnqMdMbPo7+O4t7OUdEukWNdKtPqnZw885mVb4
         mL8DHFjxmqnypsGHGMz7OaSccssZoZlPldOJY93BPFgNH0Exh2CJtsXUM3IPhgxU4Z4L
         fm9b2pXYMU1nslilwVSecyBTcDTIgoT4c1Zx92bN+X1GoM4TqP+9UspFprcmDtbj34pS
         3ghws3wuT5g1UHoOhydJC2ojXaUsgzl9qxil/ZrdvQuX50W1liVAnVrSY19M9w73v6vS
         6SXJFIFrO6tm2c6eIdFA6rklBn7eYmF2x2QKkWgaEUBCULgBkTpyzVZB/+l3/fge6ptP
         fh3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id w26-20020a056830079a00b005ad081e3cbdsi118322ots.4.2022.03.09.03.01.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2022 03:01:16 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KD8NR02BJzdZhq;
	Wed,  9 Mar 2022 18:59:51 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 19:01:13 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 19:01:12 +0800
Subject: Re: [PATCH v2 1/3] scsi: iscsi: Add helper functions to manage
 iscsi_cls_conn
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20220309030916.2932316-1-haowenchao@huawei.com>
 <20220309030916.2932316-2-haowenchao@huawei.com>
 <8183661b-a513-9b04-b289-3707704084b2@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <d7a0405f-f0df-1db0-e95e-562db1ef064f@huawei.com>
Date: Wed, 9 Mar 2022 19:01:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <8183661b-a513-9b04-b289-3707704084b2@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
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

On 2022/3/9 1:19, Mike Christie wrote:
> On 3/8/22 9:09 PM, Wenchao Hao wrote:
>> iscsi_alloc_conn(): alloc and initialize iscsi_cls_conn
>> iscsi_add_conn(): expose iscsi_cls_conn to userspace's via sysfs.
>> iscsi_remove_conn(): remove iscsi_cls_conn from sysfs
>> iscsi_free_conn(): free iscsi_cls_conn
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> Signed-off-by: Wu Bo <wubo40@huawei.com>
>> ---
>>   drivers/scsi/scsi_transport_iscsi.c | 107 ++++++++++++++++++++++++++++
>>   include/scsi/scsi_transport_iscsi.h |   5 ++
>>   2 files changed, 112 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 554b6f784223..8e97c6f88359 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -2340,6 +2340,113 @@ void iscsi_free_session(struct iscsi_cls_session *session)
>>   }
>>   EXPORT_SYMBOL_GPL(iscsi_free_session);
>>   
>> +/**
>> + * iscsi_alloc_conn - alloc iscsi class connection
>> + * @session: iscsi cls session
>> + * @dd_size: private driver data size
>> + * @cid: connection id
>> + *
>> + * This can be called from a LLD or iscsi_transport. The connection
>> + * is child of the session so cid must be unique for all connections
>> + * on the session.
>> + *
>> + * Since we do not support MCS, cid will normally be zero. In some cases
>> + * for software iscsi we could be trying to preallocate a connection struct
>> + * in which case there could be two connection structs and cid would be
>> + * non-zero.
> 
> Is that with the upstream iscsi tools or your version? I don't think the comment
> is needed or is needed somewhere else.
> 
> If this happens then they will have the same sysfs/device name so when we do the
> device_add it will spit an error about duplicate names.
> 
> 
>> + */
>> +struct iscsi_cls_conn *
>> +iscsi_alloc_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>> +{
>> +	struct iscsi_transport *transport = session->transport;
>> +	struct iscsi_cls_conn *conn;
>> +
>> +	conn = kzalloc(sizeof(*conn) + dd_size, GFP_KERNEL);
>> +	if (!conn)
>> +		return NULL;
>> +	if (dd_size)
>> +		conn->dd_data = &conn[1];
>> +
>> +	mutex_init(&conn->ep_mutex);
>> +	INIT_LIST_HEAD(&conn->conn_list);
>> +	INIT_WORK(&conn->cleanup_work, iscsi_cleanup_conn_work_fn);
>> +	conn->transport = transport;
>> +	conn->cid = cid;
>> +	conn->state = ISCSI_CONN_DOWN;
>> +
>> +	/* this is released in the dev's release function */
>> +	if (!get_device(&session->dev))
>> +		goto free_conn;
>> +
>> +	dev_set_name(&conn->dev, "connection%d:%u", session->sid, cid);
>> +	device_initialize(&conn->dev);
>> +	conn->dev.parent = &session->dev;
>> +	conn->dev.release = iscsi_conn_release;
>> +
>> +	return conn;
>> +
>> +free_conn:
>> +	kfree(conn);
>> +	return NULL;
>> +}
>> +EXPORT_SYMBOL_GPL(iscsi_alloc_conn);
>> +
>> +/**
>> + * iscsi_add_conn - add iscsi class connection
>> + * @conn: iscsi cls connection
>> + *
>> + * this would expose iscsi_cls_conn to sysfs, so make sure the related
>> + * resources when access sysfs attributes are initialized before calling this.
>> + */
>> +int iscsi_add_conn(struct iscsi_cls_conn *conn)
>> +{
>> +	int err;
>> +	unsigned long flags;
>> +	struct iscsi_cls_session *session = iscsi_dev_to_session(conn->dev.parent);
>> +
>> +	err = device_add(&conn->dev);
>> +	if (err) {
>> +		iscsi_cls_session_printk(KERN_ERR, session,
>> +					 "could not register connection's dev\n");
>> +		put_device(&session->dev);
> 
> I would call iscsi_free_conn. instead of put_device.
> 

Sorry I noticed it but forget to remove it. Here should not call 
put_device() or iscsi_free_conn(). If iscsi_add_conn() failed, we shoule 
not call any put operation which might cause resource free.

>> +		return err;
>> +	}
>> +	err = transport_register_device(&conn->dev);
>> +	if (err) {
>> +		iscsi_cls_session_printk(KERN_ERR, session,
>> +					 "could not register transport's dev\n");
>> +		device_del(&conn->dev);
>> +		put_device(&session->dev);
> 
> 
> Is for the get_device(&session->dev) in iscsi_alloc_conn? If so you don't need to
> do it because when the last put is done on the conn->dev, it will call
> iscsi_conn_release which does the put on the session when it does "put_device(parent).
> 
> Or did you mean to call put_device on the conn->dev?
> 

As above, we shouldn't call put_device() here.

> I would do device_el(&conn->dev) then do a goto free_conn at the bottom which
> does iscsi_free_conn. The place above should do the goto as well.
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d7a0405f-f0df-1db0-e95e-562db1ef064f%40huawei.com.
