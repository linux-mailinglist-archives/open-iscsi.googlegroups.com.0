Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBY7QQWIQMGQEZIXTCNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C414CCBB9
	for <lists+open-iscsi@lfdr.de>; Fri,  4 Mar 2022 03:24:38 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id g2-20020a0562141cc200b004123b0abe18sf5747934qvd.2
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Mar 2022 18:24:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646360677; cv=pass;
        d=google.com; s=arc-20160816;
        b=vkPH2m7gzGRMDJnxIT4wmWphsShAH3QfeZb8YJ7XdmfqYsOOQdN/Zg3VfUu9MmvpAH
         PF+zutkcGewv6xEoPzGHRl3f3x/hM0dW3zG9r1ePKNl8By5LrlPYks8aTPbgi7Nb14UD
         HfvoeY9ppCVTypO106flIysaCbSnOnSy7zxh7XoGQT9RvxWZLp4KlfXZS2wAA8omy0x2
         bid31pAWm5kH09YOA8Htk8+O494LFqBPa0EUgR08tomJqR5aoIV0st8I0PJHum7hVltl
         6S/xUQ5etTVD1pAQ8OpYOfSObLMTdw77SFW6/6Kqraa2zEPJUziCIfI+dIdPbPptrCW5
         DV4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=8x5IfXtR4Z80uO18O1pxT+1zWZ2k6U+awHfPZ7VFogY=;
        b=BkyW27T8Ysm7mZbRJ5kPKwub+hVtOdQU5EVUImrVdiLbYWTNe4YiCqdPmJ3afWSlbF
         aogX8QTIjNIHVa9tlNgIF/vl1lBqKrK6KDeRyYLYkm1GmnG9r7T6ZwVwiw2LjGKSuFre
         Ambhsl8DaGgOjELu680HHYdaEprc3UVT5w134XlcScezQnPoZ8nKJ5/jOTmeWSFxLHw3
         4+QWFT9KuoNIINJ+hXci90vvOaQdpK9tBN/IobnwvpYM2MLsuNC5rErwDxM331524bp+
         QeISujWNRp2ugX0FibT/eiHuiN3SwrGbyoFq+n6a6bjvweAjUlN7XXiaE4B530jSlIzN
         hbkw==
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
        bh=8x5IfXtR4Z80uO18O1pxT+1zWZ2k6U+awHfPZ7VFogY=;
        b=oxAt3kA3xff7d6LlDcOU5mo6nTZ/YhSbbD5ojbObjO1qaUbdcKVY1/0PRJ84jsv0VE
         Ibms0gNg8S/HJxyTACUEVqve90zbzxl/9kUjFVLSt1woxo/kONn0Ljc0a2UMZanlyceW
         OL6yelaFBzq1lNthWQG1k8gp1HPJK4CRqTskqndAXvqr5e9qYYaI+EkqcYLNUqTBf6wZ
         lDBRBc3J9sodUFxm13eVVdkmH7eWSAaKmrjFiueyRGRUV61Mn5vET29k+xTC8pgUL8V8
         ioFjDSgyxKois3TgiLKGqqUJjHelVER3zfZwSxIPZOZ1bkf7kd6oGWJliihd2HtOQrs7
         TpZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8x5IfXtR4Z80uO18O1pxT+1zWZ2k6U+awHfPZ7VFogY=;
        b=LufAxz0OhBHGI1lYEBYDO/EZm+0tE8tiNIuyxLzhOr9BMyjP11ALTsqjs4fBnP62FM
         d8hZrzOlwhs39ZGlFcRTB7kcvUdJqDgHD6cjugDpaMuCmL5udKxSDMVaAkbTD/1JuH1N
         TIcSljl7Qh9KMVyL1zJvGEb/E8akbc1oWz/TahqNLjnkgo1AMUvU60eBeOoFIo0JyMkG
         hwdO5UH5TbVvgAxXTE4l/k7Kj//e2Fu0uEecXSP4YOykMreaaYjM2LjiCEDoEBEf97f/
         y4on8Vd2vOZNM2E7pqXXaMoi3iRw6bXtg6ABlBMpHsKJlLjfAWRqg3yH0DRV+FgpOjjm
         uD3w==
X-Gm-Message-State: AOAM533aekW8Ri2610EuQVrusB61w5J+5TVu02YA3yqArt1FkfS2oI80
	fGepVvEiSoSHwYOjTh58T6s=
X-Google-Smtp-Source: ABdhPJzM3BT6XxfkgLkRhE7Hu6HKBiO9H1CWHSoI0TGe/dms9F4NHeXzvC2m9B9Ej2gBZArs3kYFOA==
X-Received: by 2002:a05:622a:314:b0:2de:766:edf4 with SMTP id q20-20020a05622a031400b002de0766edf4mr30012361qtw.651.1646360677222;
        Thu, 03 Mar 2022 18:24:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:b55:0:b0:476:45e7:cb49 with SMTP id 82-20020a370b55000000b0047645e7cb49ls1953054qkl.6.gmail;
 Thu, 03 Mar 2022 18:24:35 -0800 (PST)
X-Received: by 2002:a37:a3d2:0:b0:609:5b:d683 with SMTP id m201-20020a37a3d2000000b00609005bd683mr1365033qke.784.1646360675438;
        Thu, 03 Mar 2022 18:24:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646360675; cv=none;
        d=google.com; s=arc-20160816;
        b=0+9pQrJq2XId1ohUDjZypKApY1aoTUZE8fx51fubLrK6y967qTlH5hN8urJ1y33Zkv
         7vbygsgHMkjmRNpLdIKc4xkHJoSQ+xoOTQVw3iJIA0nWfsVhKdxzwFTrYJour61h2NK5
         aBcR6TgCvYJUTlYwDsD3zKfowuH2iOKyfd5Da13G6nhIGISlQOZ/K5tGB3SmsigzRpGr
         YHluOH0rWW+DenaWmm5NAVD2NYF1SSWRdbawG0Npg2n/twB29TIXMt8ikw4cqDtRZG6/
         xOnMrC5KDPWNocq8f36MBYpLxhCbAxZAet6j2fthSJ3l6ZNOSEp7CW3JLYIUdD9i41b1
         8YBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=p4Zmkbn33chpC5BS2gF++iww7RBRuYBHBNRKqL9dVYY=;
        b=IisioRQemTN4epcJfGw+o//j77bDd4kFvnUVK1bMwR+s3Unm9iSTZGudJ8FKGunU9C
         ot51u+36Lyx95AM+dEhhg3JDObpsQhw7i/LJjnzthvr/UgIlaFA6w6OU4bwBYPmlArbt
         P9KKuYYyhrM03tUPDlwu7qQJhCE121evIVJ/OXUqAWjO+d2bd+0X2gq3S6og6nJz8uy9
         VJUOrBQDACEJxs6eXZNI+DOGOPXPDCY8BohAY2D0AQAgxyZ7/PzuaRT+UKnmZ/l1wFxE
         fW7fPZSsagdlp3H2lND7xnfUso/5PxgC/6lykVR18Qa+PzGh2JFslI79D0Sgo8Y37JoW
         clGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id u14-20020ac8750e000000b002d8e1c5734dsi274122qtq.2.2022.03.03.18.24.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 18:24:35 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4K8s8149BczBrWT;
	Fri,  4 Mar 2022 10:22:41 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 4 Mar 2022 10:24:32 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 4 Mar 2022 10:24:31 +0800
Subject: Re: [PATCH 2/2] iscsi_tcp: Check if tcp_conn is valid in
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20220304025608.1874516-1-haowenchao@huawei.com>
 <20220304025608.1874516-2-haowenchao@huawei.com>
 <85a64450-99c8-268d-1ac7-86e70cbb3562@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <f6055c4a-b32f-8025-f096-f6abda03e2d4@huawei.com>
Date: Fri, 4 Mar 2022 10:24:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <85a64450-99c8-268d-1ac7-86e70cbb3562@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

On 2022/3/3 22:59, Mike Christie wrote:
> On 3/3/22 8:56 PM, Wenchao Hao wrote:
>> iscsi_create_conn() would add newly alloced iscsi_cls_conn to connlist,
>> it means when userspace sends ISCSI_UEVENT_SET_PARAM, iscsi_conn_lookup()
>> would found this iscsi_cls_conn and call the set_param callback which is
>> iscsi_sw_tcp_conn_set_param(). While the iscsi_conn's dd_data might not
>> been initialized.
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> Signed-off-by: Wu Bo <wubo40@huawei.com>
>> ---
>>   drivers/scsi/iscsi_tcp.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>> index 14db224486be..a42449df6156 100644
>> --- a/drivers/scsi/iscsi_tcp.c
>> +++ b/drivers/scsi/iscsi_tcp.c
>> @@ -716,13 +716,17 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
>>   {
>>   	struct iscsi_conn *conn = cls_conn->dd_data;
>>   	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
>> -	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
>> +	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>>   
>>   	switch(param) {
>>   	case ISCSI_PARAM_HDRDGST_EN:
>>   		iscsi_set_param(cls_conn, param, buf, buflen);
>>   		break;
>>   	case ISCSI_PARAM_DATADGST_EN:
>> +		if (!tcp_conn || !tcp_conn->dd_data)
>> +			return -ENOTCONN;
>> +
>> +		tcp_sw_conn = tcp_conn->dd_data;
>>   		iscsi_set_param(cls_conn, param, buf, buflen);
>>   		tcp_sw_conn->sendpage = conn->datadgst_en ?
>>   			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
> 
> Is this something you hit or from code review?
> 

It's from code review. I reviewed the code because the panic mentioned 
in my first patch. The issue seems would not happen, so just ignore it.

> We have those state checks:
> 
> if ((conn->state == ISCSI_CONN_BOUND) ||
>      (conn->state == ISCSI_CONN_UP)) {
> 	err = transport->set_param(conn, ev->u.set_param.param,
> 
> so we don't call set_param until after we have bound the
> connection which will be after ISCSI_UEVENT_CREATE_CONN has returned.
> 
> Also for this specific bug iscsi_if_recv_msg is called with the
> rx_queue_mutex, so set_param can only be called after the
> ISCSI_UEVENT_CREATE_CONN cmd has returned.
> .
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f6055c4a-b32f-8025-f096-f6abda03e2d4%40huawei.com.
