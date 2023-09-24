Return-Path: <open-iscsi+bncBCN4FJF4WYLRBXVOX6UAMGQE3EIUANQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47A7AC6CB
	for <lists+open-iscsi@lfdr.de>; Sun, 24 Sep 2023 08:29:53 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id ca18e2360f4ac-786a6443490sf490465439f.0
        for <lists+open-iscsi@lfdr.de>; Sat, 23 Sep 2023 23:29:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695536992; cv=pass;
        d=google.com; s=arc-20160816;
        b=X0zCUJ9IjFegUdqanklEvOXFuHg5Z+CMmuUXLWsRdqfUZE2e+DYJkl0AR8KYSQ08Ir
         zSZfgtq5V81X+EqRG32E5wFuKMn/a6JIKDlFG2tndhzo0xY3xPytNwSUuxciCzgKWIgY
         M4SaIah3v3ICTOO6LDx/Mjl+DCEUPGeXIKZGcgz4w8Jp7NkdVtJJyzJM47R4JObP2XOR
         XySnkcjwm16VnHND5NMTA8DOYq6ElKg0apcf8EUfNOVRhdaBMowKoLgcnNzPaQquVYVa
         6UwBoKMpDGlAlx0/yxlQ+8zzX/lsy3QbyIe1I912aLH8uTHXiX6PWmL3xePRP6lvJfO/
         /qdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=sbX7loWX0dqew8wlvOs3YEOaYvb7QL5Td5tUVNPLrYs=;
        fh=n00bzXvYqWHbtjkIDKieqpuBrZ70iAF2ySxOhP4S88c=;
        b=U1ky7fg+0gDG3xShLFSXlbYo5PNqw55bqlFpMyrWJMwH/CbqmjJ6pp1CKKsJ+kLtsB
         5s6hGiKUM+6KdkjpiJLoQ1mQNfkMOUNKdJC1RwayZBTvglD+aVHYvFDwcF3zjteNoCZc
         dtT3R3BAtpH0tvNCXsCXO+0/iP7UzLEvguklqxUDBAzOl0HGBS0SHNl3IFyBwJOCmmKq
         faG6KKsfLm+iWHGcBV3zGOIMmW97FOlMeu2x/q/BgaMv10bRNQv1ANiHVHZNb4dptM98
         VZMz/DOyv2Y8Z0AaTnimNvC13oB5ZLNgilUS603F3UmfM5qjnIxBuNRVfUGT+L9isTXK
         7QGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695536992; x=1696141792; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sbX7loWX0dqew8wlvOs3YEOaYvb7QL5Td5tUVNPLrYs=;
        b=SLfaDHh9o3vJHwyuuGanQWlEbTV+6hg68KD0x/naoEO5Des6/3rAzP1CBFHNWTJcN7
         fHjm/SEVv+6uxa2CTp39r/vcY8y10Ct40Wmu/n11Kqt87hTyYj0ttHHqW9ot8kvHNRUV
         8iJ4qTSYyXI4E6eBTdcg8+fmeQWzc4OSmSr/sEwQUbRyG7QnaTo7RoBN+wAgc+muSrZa
         miEhAI499ZM6E2DciGhwHlipsjddmtYmt9DjHAl4fX1SRe6u4xWI+3HW0OxTRQi9WRdS
         0sTccx2KCveautvAqbiBQPGwuUeusdXd46v7A1ox3+BQNYBjkz2a+9wefzYpNb/eaakM
         GCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695536992; x=1696141792;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sbX7loWX0dqew8wlvOs3YEOaYvb7QL5Td5tUVNPLrYs=;
        b=BiE1/r16aVU0n9d3ZRPqyLu7bFh/6WSBvUAlTuUvOvFBsJhP74qcv0lty8FlNpVDUI
         5enl0d9RumsRXrv3m50gKZyJ5WUz17sTXyNzjm5kEbbyO4MpryxuO3LRyhOSQFxlD3Rc
         1L8FZchZfufb+jVPXh19DiEblTME8h/nOVy47faa08JkyA7hoyiNkS7UKalAXus6RGSD
         1JqMGq/6PtsZ2i+Cw60SzJhID6nlB3mc73USgg+U7nqG2vlb8kYs6Av6JEn+qnUpsFy7
         tsYu5k+XL3eggYZlUCgPD4EQOJ/V3KNL0Xwtu7qulzqIRcxHpBH6KAueOPejLuDR5S0R
         Vfzg==
X-Gm-Message-State: AOJu0YwzjViajLZ4DksRuWisr/wFdAap1oWKLiwdTbRmjXVKigGllr2F
	i7Acxg9uLyAUIDh9Fo3mn8g=
X-Google-Smtp-Source: AGHT+IHkI10vDHqD66Qlwb4ERMp6KRbVdXmjRDlr44bOF0hv/sCN6KHfN1FyrTg5Fm9fIkfD3Syn1w==
X-Received: by 2002:a05:6e02:1946:b0:34b:ac73:eb97 with SMTP id x6-20020a056e02194600b0034bac73eb97mr5641649ilu.14.1695536992510;
        Sat, 23 Sep 2023 23:29:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:440b:0:b0:34e:2266:dd34 with SMTP id r11-20020a92440b000000b0034e2266dd34ls1207555ila.0.-pod-prod-03-us;
 Sat, 23 Sep 2023 23:29:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:1705:b0:34f:6742:1394 with SMTP id u5-20020a056e02170500b0034f67421394mr5700341ill.1.1695536989993;
        Sat, 23 Sep 2023 23:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695536989; cv=none;
        d=google.com; s=arc-20160816;
        b=mpt/3Oc96aefMYlQc7guePG7ojPvWdgZKciss1HUA7D/8w6d4OWN1jDncgB0idKhIP
         kdjqA9KHTdT1Y4Uv3ZI57GIqwlICFhXU0OauYi/KmJmcqRVGtNEWQ57bv3cBqJdzjluM
         tcRHvApbUqumLLXjaxzLOCrpawL3zKBO4ZDeTEl18bbsml8CNl70Vy+wOybzWq1ZzvmD
         rTfYg13984sFln731bXiuFwaqCYWMCIwY4sHbJCWgsAuJAqHMwqUpz1stQ7nazWG0eoS
         7FyujC+VzgsfbU0uoTYnHDv72LyUYMI/akUmGkwXvWDRbgrhuUY/GuzUMSKD5ORdbZHP
         ALEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=zSgdMaJfzr0qDUoJeeutc7/ZWkiPJxpX0c+YkFR5SW4=;
        fh=n00bzXvYqWHbtjkIDKieqpuBrZ70iAF2ySxOhP4S88c=;
        b=wEImSjcBNST/2IoD3rLS73IZT8Kfqv+pi06HWLILI+FoqJvEHDBwWSXpO4ppF2Eu6b
         WdXVn9GhzrmUy5kVCrLmHEjxm5dKcjbGnAROY93y6VP7aeAM1lnRJmB0DWKM3JBFVVqp
         gahCLUq0+fSvQvxDaDjIOHjIElrRoV7mGUO5k+iYJPphLGyjYQFwYOrblymZJCJnkNRx
         oTObHbe4wgoILNU+bSODK+13nlmTnrhCf+nJCqja4cVYDvwVj7w7V8CKOgxn4kQS6MzE
         BV/hu2gjJ4MZIJckOK9z3ToSySlFmYPTEpqAjk4fLQFhFA8vI7IlBx8Ly6wc865B8aHU
         JCLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id cs17-20020a056638471100b00433d8def195si876032jab.3.2023.09.23.23.29.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2023 23:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.57])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Rtbbg0lrXzMlfk;
	Sun, 24 Sep 2023 14:25:35 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Sun, 24 Sep 2023 14:29:13 +0800
Message-ID: <f2fb9e25-c022-58d2-ac56-db35c2edfedf@huawei.com>
Date: Sun, 24 Sep 2023 14:29:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] scsi: Add comment of target_destroy in
 scsi_host_template
Content-Language: en-US
To: Bart Van Assche <bvanassche@acm.org>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>
References: <20230922093842.2646157-1-haowenchao2@huawei.com>
 <20230922093842.2646157-3-haowenchao2@huawei.com>
 <9567a78a-baf8-432b-b279-cfc56d370a1d@acm.org>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <9567a78a-baf8-432b-b279-cfc56d370a1d@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

On 2023/9/22 22:53, Bart Van Assche wrote:
> On 9/22/23 02:38, Wenchao Hao wrote:
>> Add comment to tell callback function target_destroy of
>> scsi_host_template is called in atomic context.
>>
>> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
>> ---
>> =C2=A0 include/scsi/scsi_host.h | 3 +++
>> =C2=A0 1 file changed, 3 insertions(+)
>>
>> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
>> index 49f768d0ff37..a72248fa5adf 100644
>> --- a/include/scsi/scsi_host.h
>> +++ b/include/scsi/scsi_host.h
>> @@ -245,6 +245,9 @@ struct scsi_host_template {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * midlayer calls this point so that=
 the driver may deallocate
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * and terminate any references to t=
he target.
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>> +=C2=A0=C2=A0=C2=A0=C2=A0 * Note: this callback in called with spin_lock=
 held, so donot
>> +=C2=A0=C2=A0=C2=A0=C2=A0 * call functions might cause schedule
>> +=C2=A0=C2=A0=C2=A0=C2=A0 *
>=20
> This comment should mention which spinlock is held.
>=20

Would update, thanks for your review suggestion.

> Thanks,
>=20
> Bart.
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/f2fb9e25-c022-58d2-ac56-db35c2edfedf%40huawei.com.
