Return-Path: <open-iscsi+bncBDTY5EWUQMEBBAEIU2FQMGQEKRARISY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F05A42F3A0
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 15:37:06 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id g29-20020a4a6b1d000000b002b6cdb462cesf4112850ooc.5
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 06:37:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634305025; cv=pass;
        d=google.com; s=arc-20160816;
        b=buIIv520SxYR+g5TxHOMs2iNYk1jbtwHYLYPJA3mhLiA9BknxZ4fIwGzw6Aq1ZO5m6
         bSyuReSmiKSoMyJZRT8K0gLVjEaqonxAX2v5jJ8MiuqiYkHsSfMqz7J0OBP+JmEX8tmG
         UQtHUkJFGhnkGggEVf4PJ0CLkvbLIG9/G+o1tG2GIWfc3bJG4AGLL/RSzFBiE/biydPe
         MNq/s1TZETE4YBn64smNkxJG3iwUTXPu19Lu+fGRBwqWGfdClpEu12ErWM79IItnfF/y
         G/oKqDlxr5v9vLFZL9ocXv9pElzX7zuz0MtJ2ov7YoXa4FwHQClBe2piaFEjV3b7C3Sg
         YEQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=t/LKhp7LHpaZMAyLOeHhqF0zW3vEfulVmtJYOXPr8VU=;
        b=TeNrbagA3gkD6EYPpuZjqEumAgd9ap72gVL+5VO6Sz10L1ar6UvBZPq39vkSJI/ZIy
         mPM0G47OPIAEtoGkfQXSx0MqM2O9g5lTQM2dxxl8cVuXsx9X/2r0ZbzfUE29GwePWeix
         zqGw++P92VqTtCR3gSylttTDKdOk1ywSMGxbjw5hcho6T5duLCGD1LpaK/NfPQMhI0Zh
         afMGyeQ4sGl0PktgGUiXcmZhPd1MJEJrN0cIksGwkZgBod8Pi9DMs38fimKqE2/f6olx
         1r8muz4yFK35mTglwKiqGSGwQccb1NIxb+OLx12Ge4R1tOQt8rHLSlk1OLDNxt5jxe3a
         go+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=t/LKhp7LHpaZMAyLOeHhqF0zW3vEfulVmtJYOXPr8VU=;
        b=pLSWxxG5gunIVu1TNrcC5+xQo8ZZAZK+np+Cocjhc9NGHtEuRmANSo2kX/HzixjwXV
         o0AQSWRyaLrgcFjdF8VeruI0icJ2M7MsugHwjDrT9HGT8GcdGM7JNHw3/DvFlMcpA8+t
         45vyF/34cqG8TIzmr4Usm4OipYP2/zl/TX8vLbwxXVUeDgZIt4u6Yq/BZj/5UvdkWUTk
         5eTztSpfhz7l67DM3HfSTxGLJlmmILltS4bxnYbTFR/lMmSdPml9Li560vF8fWh+3SRf
         /gh3vVPFthb+5EXmIte3Xvoi9EdEX4VW4a0mDMyGdB0yB52PLpiTqjVvndcFwy2OtSh+
         zb4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t/LKhp7LHpaZMAyLOeHhqF0zW3vEfulVmtJYOXPr8VU=;
        b=NOF2t0LYf9Ee4Y4A6Cm556OFv4CIKLtcskw/1v8BcEbf04w6lkbzG0+rzxIDTxVPoL
         fcNsGpFoqv2hTAolmpyiS3Z4auALIJXbzcpk2kxiF222Q4ZsA4rjDkUMh+Q98LhTZHIx
         dCoEtl3Uj2twRsvydawlJhFl+VCpKF5X0sfJXIsqqZmV6brgDgSx6lWQHopKbE3xOJf4
         L4Kh/VK7nlcdcBQ5iywQlJZb+yL163iClElV/QN5QRcrSQEtpN9h9yB63+ZevHnfqoVI
         qDD/A2RXgUny2yiG+UK5IrroVGXXgQPrRgRqrT+5lDyisDNGOfLG6dG7J66eIy3kSGTl
         FPWg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531/7cg8c9Dj2CbJFn9iGvQmPQc7xEJeGXJZekRT7FChX9sY2rRd
	dDnHxtlBesXPMGMafgn6buE=
X-Google-Smtp-Source: ABdhPJwkKjsrXbwQ2h9DvtoNUABuIPbTaKpleshQyvzpzsjkuYvXcCcGdAqk9kVoMLi40AaPToSwoQ==
X-Received: by 2002:aca:31cb:: with SMTP id x194mr8204859oix.62.1634305025286;
        Fri, 15 Oct 2021 06:37:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:19e7:: with SMTP id k94ls2792727otk.7.gmail; Fri, 15 Oct
 2021 06:37:04 -0700 (PDT)
X-Received: by 2002:a05:6830:3101:: with SMTP id b1mr6978485ots.291.1634305024680;
        Fri, 15 Oct 2021 06:37:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634305024; cv=none;
        d=google.com; s=arc-20160816;
        b=Rnhpuys8WJYZhDU7eqGvjXO1pcN3mPWt5Su6kwJicAbt0mopZB5HGUl2HV0GjhjTNJ
         KAmiE/sT87G+0fAMzzruDuNOE+4LZ5pa8cgV0b49H/+WVISQGWaPKhogoqm3Mwd/CJ/e
         WueslQyO5VgEP98QAVi/BO7L1TwrT8WVUjqe0ASCOv51a08ytlum+OMj4TbEZW7I2eC5
         03nBsUgT7z1D1YXar68ZgMPXXClosSnyWG8jyoVypuh/Kr5dfNx2XSyYZSs9ASUcCCCr
         gm2PWs40aN/vfmfPUkLyHpfrM69VZcURnvAL9LY+AYyUpM0e72wbGjeq/foiB3G+43cM
         Z3gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=VEasASjaFfoy402Ygo9qErt/Aje85Tre+XYARU/3sCc=;
        b=he61SeTFWAfIAyBOV2OFzo9M1OkUixbzGYkc7hK+PAwZWT5R2K4jPaOCxdgGECPNf0
         ZkFme6tlRuNfPT6SFa00gbH8foyUmKbf7jYSBbMl1DtXYtSaws9tVI2BOD+F0XEjE7Al
         5K8nAcCZuVJXWfDFrCLcvpfQOcmIWelp377i2xChCDhnPbIAJElOuIOUvQmBV/WV7h96
         TnFuwHqovxbYf029aXH7gVUGgZ7CjXQUvw8YedrqGV08kdk/g+Fp/1GbLx+6HFDXvEq7
         Yj8gvzDWp3Dy2WmJ8xvMUgIUDLMqJ6RIwG3ol6cuF0OGDzcZnVCgEcbBzxjz2WCIpUQ5
         d9dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id s142si500357oie.0.2021.10.15.06.37.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 06:37:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.92 #5 (Debian))
	id 1mbNOH-0002be-4b; Fri, 15 Oct 2021 21:36:53 +0800
Received: from herbert by gondobar with local (Exim 4.92)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1mbNNz-0006se-3m; Fri, 15 Oct 2021 21:36:35 +0800
Date: Fri, 15 Oct 2021 21:36:35 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Vegard Nossum <vegard.nossum@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: libiscsi: select CRYPTO_HASH for ISCSI_TCP
Message-ID: <20211015133635.GA26418@gondor.apana.org.au>
References: <20211015131115.12720-1-vegard.nossum@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211015131115.12720-1-vegard.nossum@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Fri, Oct 15, 2021 at 03:11:15PM +0200, Vegard Nossum wrote:
> Fix the following build/link error by adding a dependency on CRYPTO_HASH:
> 
>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_dgst_header':
>   libiscsi_tcp.c:(.text+0x237): undefined reference to `crypto_ahash_digest'
>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_segment_done':
>   libiscsi_tcp.c:(.text+0x1325): undefined reference to `crypto_ahash_final'
> 
> Fixes: 5d6ac29b9ebf2 ("iscsi_tcp: Use ahash")
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
> ---
>  drivers/scsi/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
> index 6e3a04107bb65..09764f3c42447 100644
> --- a/drivers/scsi/Kconfig
> +++ b/drivers/scsi/Kconfig
> @@ -290,6 +290,7 @@ config ISCSI_TCP
>  	tristate "iSCSI Initiator over TCP/IP"
>  	depends on SCSI && INET
>  	select CRYPTO
> +	select CRYPTO_HASH
>  	select CRYPTO_MD5
>  	select CRYPTO_CRC32C
>  	select SCSI_ISCSI_ATTRS

CRYPTO_MD5 already selects CRYPTO_HASH so this shouldn't be needed.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211015133635.GA26418%40gondor.apana.org.au.
