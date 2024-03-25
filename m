Return-Path: <open-iscsi+bncBDJNPU5KREFBBRG2QSYAMGQETMJ7OGA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id E051188944B
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:52:38 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id d9443c01a7336-1dde0e7514bsf29530535ad.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711353157; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2AoAGMgMSm255rhR2EztxkMXD+Py5X6pEn7eVHxxSwu2tF/WzT2nC2Z5I5p0TpL58
         0oiXHD89V7A5FaW4t53qUoqu5Si9laBYUBBDXWBayIqoiz+XoTeTjyUJI0fVHznTyrrF
         eRem4+WtgmkBdPC5xoP5QDfmrG2E2u2tFuNZRwi0xGXFxfiyiy/DwiGoHcKqPQU58b2j
         kpgKQkGVTepcSF7zU6e0TTak5w05KEjcp7Gp+ARIrdpChOIfUKyJI3kj62ZBUBas+wXn
         5swHUof0CT9OhlUYbmTdXeZEkLeZ2Rz9a/jmFJwLx4eDDigugMOxbT/0bogc8jahGfur
         oHtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=D1I7DnAmvIR2FFqgSupXuJ1gjvj7UoG2S52g2k6pAaM=;
        fh=eTOm+Mgxp+qOf1koB96mw+Z0vTV3AR77uFkA3LelASo=;
        b=A0cFZUFPE3Q/yyntCMNfwblJn2PI3BkUciAaeac/A042HPrCSeTA2OPxblzEP9/m4P
         JPUsCcGGgVxVBSI48PQiiuD5Wjr5a3FHxKe5GHWpgvOBruuSd0w+CHB6j4nO0CDw0gYg
         bQe2WVZnBmyckON5odYhu921KgF97ljxcA1ath2giinmmNqwZoMwLHC/7xffzVgDBqV9
         +DwgwUtDxRwzpHDK37QiK9YOGQ2fqd6vfLi/EjY7cmYPylPVcOb31MVjtjlejAWKBP99
         fV9KDpWOwv3CY31UTR421CSpfzS0ZHZq1djQR7QIXtx0XXTKybUULTOMVpO+zmTV/zqd
         I63A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BfPij3gz;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711353157; x=1711957957; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=D1I7DnAmvIR2FFqgSupXuJ1gjvj7UoG2S52g2k6pAaM=;
        b=DQf3BKw+91iSSjMYb/SoFM10qFDHmpcRh1iQSoj1k6ngfh7etbC1lXIJjpxAAMHPp7
         Azo9YafJounsvwl0Moom4RFnxoJqAYHscAOSUfmA8Oo+b09pZGA1xZBnFG1xkhpCEiUs
         rnnqo6RDF/9YMFuJUKbMrAgc+Xwfr2h7/gCT1F1k+oD9/J4QkM8FmViyj+ZobMpv+peh
         hOKDgica1C7KXAX5AQK/NR/CyQjPwXoS2ySnJmI5+m26Ckj09JdicQxITr3UGQFcDgz0
         9laZgqkEtkOXscMVGtL9RFq7axQi1zmX2t+B3gxTFRTi4ObThLFc+VOmj2IlGi1jcsnE
         g9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711353157; x=1711957957;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1I7DnAmvIR2FFqgSupXuJ1gjvj7UoG2S52g2k6pAaM=;
        b=nQLHHa/qHKY8pYRJiJvJM2zBJL4+wJmfg+7yD2AXR1OkSD1dton/98CXFzYxAkIUbn
         8r+MUGW2x1+dQaNGQxreKJzBTRBcE2nboL4VSg93uG7rFY/Yoz9jb5JvbfwkCX/xEf8j
         ltHxVmHoSUiBeEoKDl+q8MnxYwgQD2otj+Dm2Jb1RszWpB1PHXLeIyhH7UVjFw1Iu4vT
         fWxYAIKgCxKYRofhzGfYpHG0fVWJkjjVD61SajHjXbupMrFjR8XONrKAFIZfH0+xmBB+
         aXKHL+RC8c1pqePXaqLBXHMEZuP3XQiipx9WzIAqhyqniDdpzmguEZdID7ghy1OiRYI5
         wpsg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVaGjCSM+DhvSTEu3xE5w9J51URIlTI3IfJJzvXa4+7CFZhqRmD9xTdPd+Lm9/2LEGthLcbwoWS9TrxZNknkb0STr9E/noi+e8=
X-Gm-Message-State: AOJu0YxAPtAGnug1m18lwjDD79S7/U0jD5Rv89CThwDNjLLinopxkysZ
	JL0yzGlKQwCUMZ2YfLJocjB0ldOzM5oTYv98M79L7OW6np1aYPEA
X-Google-Smtp-Source: AGHT+IFqeknpMkKt0SlPQEqwiz8zH4LKCzSALyRfErkx+Tzr2HN96PkAs8EeR9YiEg1mc5a5K+MQgw==
X-Received: by 2002:a17:902:d58a:b0:1e0:1f1d:bd3c with SMTP id k10-20020a170902d58a00b001e01f1dbd3cmr7172740plh.46.1711353157571;
        Mon, 25 Mar 2024 00:52:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:40d2:b0:1e0:912e:8b93 with SMTP id
 t18-20020a17090340d200b001e0912e8b93ls1705013pld.0.-pod-prod-05-us; Mon, 25
 Mar 2024 00:52:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWr45KPf1uN7xCtjaxgJ9Pgm5xCDSHeNclYGCqqchTVrIrt5pmXWiJF8NWGRWoVO/Vm8GTZ7kLmPjOypMqA83EAhV1dYMBQtUvkwvA=
X-Received: by 2002:a17:902:ecd1:b0:1dd:7c2e:a31c with SMTP id a17-20020a170902ecd100b001dd7c2ea31cmr6249329plh.50.1711353155487;
        Mon, 25 Mar 2024 00:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353155; cv=none;
        d=google.com; s=arc-20160816;
        b=zEc8YxQyI2OUou5raXWBWRqaeK8avfy06jRJTWECVFTsPkJyxbxFYTo9VieSwkujY8
         rFhkGvN1icMteeVqN95RXLNXpjNiTViXuFceYuYs8ieLj+Sk+kp7aDKS1YDXfTYp5HKA
         r+VwjmYj84RTtt2Xd8eDzRXkbCysJkL22iXFi4tklZCoiuM8zfMMy4L7G5DJWr7bsoz1
         Zbw083DWsdv+PvOzLAmV6IKBPhleRkyiT/6kAP5NNyXz2FB3H1jb3l40SF2f4doi4fPk
         2vQMoxnnGq9/j50JHpyKluDrLbh3blLCw7vVZFsdauvv0B0+DjcUmvgvaS5PvoeoCOrR
         fO3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=0e9HI4U8BFRJDMkw1xVAtJWpEnV1o/4ci5n91lhMvHs=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=F82QFZkPGrTT24FSUfCtPRtmeMS4/GSPZ/+MFAA7m6n/t0Jrwunnz/d+pZV+5Nr4nD
         vVuP4xvn6UpaTUrpTLBMMraROQPDyinM/LEJ2DON/s6e/NZBEbIWLUg3XdpFHi+MNL5K
         LNmiIqT3R7CJk2zu6EM2GztVhIDBMedlL9nfkBPNeOBlx3tlFoSOh7VT/Uf7GQfSjgPz
         lmks2MGvvKOqO+TGKu9QpEuVQ1ODcpKjGiFhvQveB5L0687/xrkdVkPC6BE7NZIKK9wH
         DtbHLFMkz35pIA3LlLm+w1FVmd75XedzT0+K7Xb4sh1mbZ9NGRXwIc1WiZ8yLeRAt9YX
         xRhg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BfPij3gz;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id y4-20020a170902e18400b001dede653af6si297006pla.1.2024.03.25.00.52.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 62631CE0916;
	Mon, 25 Mar 2024 07:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1373BC433F1;
	Mon, 25 Mar 2024 07:52:26 +0000 (UTC)
Message-ID: <06562b24-1397-4ac3-bb62-f2409503e956@kernel.org>
Date: Mon, 25 Mar 2024 16:52:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/23] libata: switch to using ->device_configure
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-21-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-21-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BfPij3gz;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/25/24 08:54, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me. For the ata bits:

Acked-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/06562b24-1397-4ac3-bb62-f2409503e956%40kernel.org.
