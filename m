Return-Path: <open-iscsi+bncBD3JNNMDTMEBBV6UW2UAMGQE4RHZ4TI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAAD7AB420
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:53:14 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id d75a77b69052e-4121ae638c2sf22627291cf.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:53:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695394393; cv=pass;
        d=google.com; s=arc-20160816;
        b=TiDWGM+veShnlkGYo47YFOj8j0VR829mRClwL9TjGHzEZxjJ56uaLKYytdH8c470Mp
         eWUvP9WKc3GOzLBtpLqsPhbKmcpLt4Wy9CnCzbMT79EyohwLFWNrfRTTgrIOEC/AIq40
         3l8KkL7aK07oxVfwVHLnC7MAA+OYoI7bbYDm6VHZl11pICAvkuamYehS7xFpnEkxh3Wk
         vqX0ZQE4/xP4DV/83RGcRN0o04uBR6pujdkskQ5/Zta90G2WydVYF8YAExzX/KSPA/X3
         rKWKrVE7dZAMJIJkqvrjflRvfHv5S/818RU/xPd78ruh9NyoXxkwB0yvwsFBrQk18IxN
         TeNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=OsR8kFyFAIldIpdo+mqHfzcIhOQb6qEkIOdlIGIFH2w=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=FsAM4/+3+yVYS29u7YyY4nQ663ZGxWE53aItpUzpT9442GEWHk08Ee3OkA1xauLPmj
         SgA+vO8VGcy9FOuEi0lnRBSEwir+Aqsj9ig/c2wQEKSrr2Y9Y4s3Of/WrMNyDP2zFdEo
         9sCv6R/H2+i3n+5WJVqK/AJKqOyJnHxJUc9JyNSyU+zSjd58HFDwI19BdOUzllAnmuxm
         OlIlfG48bw+8eWIeGiWq20f3pct7au//UGyGx/7Njvt0LAAhc9CcLwxFELD3D3wZCfWG
         lxcxHfppFut1k2rG2xb9LWIE5SbQjQrZgUEX+HLZLjlAxjNfkxajUYNZnC6kloBkgoUR
         8QKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.172 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695394393; x=1695999193; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OsR8kFyFAIldIpdo+mqHfzcIhOQb6qEkIOdlIGIFH2w=;
        b=tX8E3bP3W8YUHFZxBM8ebSjqz1U8O93F1p+N4QhXDz2fHvxyEeyUm3kzg/Gqomu7Dv
         hIoU73K4nC7iHVNt4LXBqgXNIFbBCCmD6zL8TKdbeAOWVhhR0/pv2JecTieoTdVLNvPm
         xtlb2nyOcpzF9/97qEttkTwOvcI+nRjVrlQrNP0w3zCbI/OPhEAbpH9kKx3kZblLvRB+
         iUJXewOvozTKSdtY4iYMF97Za+9rGjc/x4Zr2r+p7gj++CSBUgqXQk/cL/Eh92CIMqe9
         +PnkrfhnZDT4tS6yinyjc5pnghqtySpz/RdzuJ9dB2QdxCeeAmJIziscNLBEMvbi7Cs5
         wytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695394393; x=1695999193;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OsR8kFyFAIldIpdo+mqHfzcIhOQb6qEkIOdlIGIFH2w=;
        b=TKsCzoLawhaEnRM+cMW/LpeuTLw7BZs9qrATpb0cJSxSy3CGsJnpTJPLtPrmbcRx/i
         zRejl5NAyaaCpwgGIjehgmEJfETzDlUxp3MvYmuNmgBRfQT59cEMpg8znT4/UGNY1QGO
         5d4iEVmkvQSHxY3/AdX3pLJ2+JPv7FLQgBIV8gSvLAsWWkoOfQJs13ndrBOeHcleVRGQ
         dEzTXmqhVu5oh9trVbxbO7LefZ7OEibIGTm2UVNfalqeFBU9ZNk/ZYPlHUY5WtFo96Yc
         COuMsnRdnFSFYlRwzko+avGy+MERPb/M2hlOKGR0wdn2qNDfS926M6Hnq1cuzjbLvHh3
         hsTA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YziSffXCzVCXC3gDXC8OcXFRjOdUq5/LWgYZcIn2rE1LgTrflwB
	GNNOA4SxK0gneFxhHfhdfAE=
X-Google-Smtp-Source: AGHT+IFEwcCfS0v/SXhXkeh248AyDUtu24Z4ZBLmDsSPmE5SvCgfYcNZ5SG9Jy/nFHNj3jRc4bNPgw==
X-Received: by 2002:a05:622a:138d:b0:415:12b5:73c0 with SMTP id o13-20020a05622a138d00b0041512b573c0mr9860151qtk.32.1695394392968;
        Fri, 22 Sep 2023 07:53:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:65c5:0:b0:412:c44:e465 with SMTP id t5-20020ac865c5000000b004120c44e465ls369021qto.0.-pod-prod-01-us;
 Fri, 22 Sep 2023 07:53:11 -0700 (PDT)
X-Received: by 2002:ac8:7d0c:0:b0:412:2ad4:da05 with SMTP id g12-20020ac87d0c000000b004122ad4da05mr9715941qtb.38.1695394390996;
        Fri, 22 Sep 2023 07:53:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695394390; cv=none;
        d=google.com; s=arc-20160816;
        b=S6gqTxZSYlCsS5jptVjDRD1gNXb5GjQczbuYXvvizSWCPMlDF5x6D/QN1BjbfUBKg3
         sB11iwIh/GX1awsltks9gDWWzRfTctxrWAH7kQ7UAiR52OXbQejSrtzoIEEzsVprAL4M
         fi057lpRVci7bZuWC5OXhZDUTtwPE/kgV/UUZq755nBApWflKJxWHIh7kbtbkeWMr0tQ
         WvwRmeyr7ygGtAqUCVPvpIbYbb5Nq8qtj7A00p7AjKVf9oY94AYL+DIFfHOuz90PEZlE
         zW+ig6tb+GfYGIHgVLPd6CiEO5dVEZIU6lIvJtVpwuBoxCZGZHjDhbvE0j89sDyJMbno
         /axw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=fQ2DQQsTYbmNxZeLx7w+/PCwlM9kvekCBTcVZGvkVac=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=zSSXkgo1BC7In8A0HDE2CxmeaF9k7JTzK5n5diaGTrg8lyTzLwDLOYSNbMc35MYr/u
         sm0Mo1G7ce9GLWxxAM7/OTBNwWkIzutfiiAK4v+pPgJ3lJXQHviqGsMzIulGe6Ig9Fo1
         2Vjrcc20XfcEr/Mrmpa/LJsKlWNklM3ZF0R6nmTBjaCmOMTxN9wr3SZHvReIDeh2DeBO
         4IBghLLe5IcUwwB/2jPjQ770HXjgn47vtY/f9lfN6OqUz7TbPjFuSuJgKlKh2CpSVXaG
         1Ees4hljGb85DbOsHZ88/+TKvqE0S8M/wxJazJRZK7+8E/WbGMdVV07lERp5CaKwUl8c
         2DxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.172 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com. [209.85.214.172])
        by gmr-mx.google.com with ESMTPS id cb20-20020a05622a1f9400b004109531b7desi702890qtb.5.2023.09.22.07.53.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 07:53:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.172 as permitted sender) client-ip=209.85.214.172;
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1c5c91bece9so18794415ad.3
        for <open-iscsi@googlegroups.com>; Fri, 22 Sep 2023 07:53:10 -0700 (PDT)
X-Received: by 2002:a17:903:44a:b0:1c4:e69:42c3 with SMTP id iw10-20020a170903044a00b001c40e6942c3mr7655057plb.43.1695394389911;
        Fri, 22 Sep 2023 07:53:09 -0700 (PDT)
Received: from ?IPV6:2620:15c:211:201:70e9:c86f:4352:fcc? ([2620:15c:211:201:70e9:c86f:4352:fcc])
        by smtp.gmail.com with ESMTPSA id ay6-20020a1709028b8600b001b53c8659fesm3546667plb.30.2023.09.22.07.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 07:53:09 -0700 (PDT)
Message-ID: <9567a78a-baf8-432b-b279-cfc56d370a1d@acm.org>
Date: Fri, 22 Sep 2023 07:53:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] scsi: Add comment of target_destroy in
 scsi_host_template
Content-Language: en-US
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922093842.2646157-1-haowenchao2@huawei.com>
 <20230922093842.2646157-3-haowenchao2@huawei.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20230922093842.2646157-3-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.172 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=acm.org
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

On 9/22/23 02:38, Wenchao Hao wrote:
> Add comment to tell callback function target_destroy of
> scsi_host_template is called in atomic context.
> 
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
> ---
>   include/scsi/scsi_host.h | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
> index 49f768d0ff37..a72248fa5adf 100644
> --- a/include/scsi/scsi_host.h
> +++ b/include/scsi/scsi_host.h
> @@ -245,6 +245,9 @@ struct scsi_host_template {
>   	 * midlayer calls this point so that the driver may deallocate
>   	 * and terminate any references to the target.
>   	 *
> +	 * Note: this callback in called with spin_lock held, so donot
> +	 * call functions might cause schedule
> +	 *

This comment should mention which spinlock is held.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9567a78a-baf8-432b-b279-cfc56d370a1d%40acm.org.
