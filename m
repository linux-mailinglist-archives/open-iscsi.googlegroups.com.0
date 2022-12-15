Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBT6I5OOAMGQENDXDQJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E9B64D84A
	for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 10:09:38 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id 4-20020a671704000000b003af7639515asf576532vsx.8
        for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 01:09:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671095377; cv=pass;
        d=google.com; s=arc-20160816;
        b=X5WFTUpCot5Efmz6vk1kR6kJrj+lrTp42jcJwMUhi3RU9waw4PRuhuy0Qok0Rsp1nQ
         zP5rA5RqwCKm/mlYrfgeyZIxQbWehlJrd4LiFMuGFwGQ3wFELGrkSdHqtIQ1ctvS7Xkt
         i/PkUBv9W0Ev/weurpTactawxiGluZL4AyxENZlnKgLEA+QplQw1IEFqXdeg1yg4eOCf
         yb9hGfb8Sqnj8KLSlVMnTOlM3MhoSRpC+u0CtYzegEabaUIGzuqnJusbgZc2kqvvN69H
         kEOgfeYkTlkC5L7fS+yZSiI4raDGUKg3JMt7K6G0nNtxhdhdFyNfFcG+a8c0b9EpGI8O
         xTgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=Yef4MXPKBGE2RHrZsE++ddeLJzYxx3kQ4xS4TdYUXFQ=;
        b=qQMQ/AMsEJXTmbYfKssojBEZpFS5JuHt72A/JNTSiVnUIiL0J1ZULvMh9t1w9vyWmc
         HTZYWT6rIFsBf0ufv+kbQe7SiuSsADkHbRRIFbRYEg4UjlDMfuYSxfG6UA6bLdkgxh5q
         QkK/goLf3Ipmtq5LraqQJiTHwvV8O64FvUHKjlUeypWyidD+6FQOeZxNWo2hvbz1vTVV
         DbxyzQ4CXzk3PL673ypQL87j7ByrXv8epAeYH1dxLKuGy/wYbZKBjq8LjRiYWSrHfEhu
         6o4XYE1WZOa6Wr+5K5vtruAL40rZ2MZ2I+wsba9cEiraiHiOGQcf4kQ3Agd8a60wPFCq
         agQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yef4MXPKBGE2RHrZsE++ddeLJzYxx3kQ4xS4TdYUXFQ=;
        b=G2Smob5ms5sDwcXaG2Na0wIJZ1u3sLHRSlomZt201O9gDapLiY2gAnx8xEhfUsKDZF
         sdv5JY1YOURDpgH2h/0q1UMepm0B1HgUxYjeHlLLVZ9vE5gqwaJRRpLWfYdRLj2ioOex
         GA9h9kdRvO3x1F+WZz9xg3gp7KaQcC6s3tgTmjKYZm+Mlv2teCRaFY1kqohgOFFjI6C8
         5QClixmcPHo/3bJD1vm77zzjG+z8GIJ1FtlpDvfwGTkJRPt1ftmo9ToXkbYW2Rp7/P96
         T3A/BBvEqBBUvqqM+upp4XmqnLXYgX6RgDmME8MR6leldrQ/6ZhydZVtIOGduxAa/vGy
         eOjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Yef4MXPKBGE2RHrZsE++ddeLJzYxx3kQ4xS4TdYUXFQ=;
        b=g2Wt0z0eoOCH3kHvlQWAou+voso1pOrm5ZhymM3NAlLCShp1H6H6Q/1XymGKASFRAY
         nP80kK6Vs0U7DiM3p35Dz4t16LOX6J7cT3dFiL9q5Jm0bSjXDmoPL8cXo+Y44pm2NHJv
         Xolj+fHet7/KU/GhvDLfCCemq/gt/X2vKcCuCza1NQMvWtYZdNszkTFgY8YAA2yQg2si
         cg1/hz+YlAi5btPMHY7am8imtwbKG+3ML8WKzN/tjY/H7wEzq4lt0lbm5e5N7DGMebQT
         +ik53bZBRyaVl/Uksmo+yWxEfuulZvmHd99UYKOMadOQYNpixhEvL4BrYxMW+ldC7MBk
         hM9Q==
X-Gm-Message-State: ANoB5plOnHw4R9mukGcjlY5Nuzu3+KYsVldbIVzNBgR5rfA3venengOj
	CehC2fe3dgLX68gpu4+rgVk=
X-Google-Smtp-Source: AA0mqf42hMy83LuE/dtIp69QKsYOhrPuSJxmN7xLD8WVW9xzupjCvyGCkjXmwmFf3cLaJCirSx98VQ==
X-Received: by 2002:a67:ef90:0:b0:3b1:1274:32c with SMTP id r16-20020a67ef90000000b003b11274032cmr18750309vsp.68.1671095377424;
        Thu, 15 Dec 2022 01:09:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:2410:0:b0:3bd:614b:5218 with SMTP id k16-20020a1f2410000000b003bd614b5218ls3562573vkk.5.-pod-prod-gmail;
 Thu, 15 Dec 2022 01:09:35 -0800 (PST)
X-Received: by 2002:ac5:cc49:0:b0:3c6:d4a8:d9cf with SMTP id l9-20020ac5cc49000000b003c6d4a8d9cfmr133307vkm.13.1671095375343;
        Thu, 15 Dec 2022 01:09:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671095375; cv=none;
        d=google.com; s=arc-20160816;
        b=wXPzwiSVjmuuCra7rs4B9oEYiUeQi1KvcgWj/6irwqU/PH0OG43ipqb7BhGfqB8xbJ
         52qcbi9qAnPA3kZvd3m0YRyhVUk0nnM2NY883MW5BQrMdZjWDo3jLbwHG2eyB5hpLDeK
         exM0f0RwWRRi+BcI1E05mMIh/Dn/O+lM/31DCqN7Lwrvga9VEullTp+HeFmvUVnMth9V
         xnSzoY1XfhJO2+BKd4SZgQ1yBB3iU+fLUfHuAnDJLDz7oHLiAEKp3wqlNAWHutDANvPF
         M234XXDQlErnAJ5H6tehWZUOS5uo8CLHWaE5wEJrzvSefWdfwerWbIFPgUJPy0cfkCrh
         VoAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=GdYdn2zvt/obQzvde83xQWjO0GifY2s9fm41GhV70oQ=;
        b=eZvioFNKjsOGJYg4Ygexqx2zyshNe2yFNNBYYXvozqQeLEC/wtYYq9ZS7Ex9Mx+IMk
         T+h1Zo7nNnUbX46/wCpVkEcTdwOA9rZ9iq8muoNGv9qO9H8jQP3VZYumvd5rp3k6Afsx
         yHmQ+lenYzR4zJTjFLNnqS6qjcTIzB7/bmdPpQWPm4TdjNhEN3TA7Ofl2ZrS522H7LcU
         g/nqm9VUj9eb7krL5T0DDqeejdW4q/5ZNlE6LZMe0Ur14c5TMmBXY5UZNLazb87XkXx5
         xNSyW97Fkc4iJDpjL1aNWKRojKuHfEt34CFD5VgKkLL08RkcZVTp8vEDFo2T3jHsWJeX
         jgbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id ay12-20020a056130030c00b00418e1741f27si644585uab.0.2022.12.15.01.09.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Dec 2022 01:09:35 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NXmcJ17bmzmWbT;
	Thu, 15 Dec 2022 17:08:32 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Thu, 15 Dec 2022 17:09:31 +0800
Message-ID: <57c12317-c229-8cbe-b3d2-d799ea5f554c@huawei.com>
Date: Thu, 15 Dec 2022 17:09:31 +0800
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
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <Y5rHX95Vvl1aLhbp@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml100019.china.huawei.com (7.185.36.175) To
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


On 2022/12/15 15:06, Christoph Hellwig wrote:
> On Wed, Dec 14, 2022 at 03:08:44PM +0800, Wenchao Hao wrote:
>> When iSCSI initiator logged in target, the target attached none valid
>> lun but lun0. lun0 is not an valid disk, while it would response
>> inquiry command with PQ=1 and other general scsi commands like probe lun.
>> The others luns of target is added/removed dynamicly.
> 
> I can't find any special casing of LUN0 in RFC7144, can you clarify
> where you think that treats LUN0 any differently than other transports?
> .
This is not described in RFC7144. The sense described above
aims to tell that a dummy lun is useful.

In my opinion, if the addressed lun still response the
inquiry and other commands, we should not skip it,
maybe let the scsi drivers like sd/st/sg to determine
how to handle this lun accordint to the PQ value.

As discussed in following mail, another drivers would
be broken too.

https://lore.kernel.org/linux-scsi/CA+PODjqrRzyJnOKoabMOV4EPByNnL1LgTi+QAKENP3NwUq5YCw@mail.gmail.com/

The key point of my patch is to add one way to map
dummy lun to an sg device. 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/57c12317-c229-8cbe-b3d2-d799ea5f554c%40huawei.com.
